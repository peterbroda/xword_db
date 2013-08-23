require 'grid_square'

class PuzzlesController < ApplicationController
  def show
    @special_type = "normal"

    next_id = params[:id].to_i + 1
    prev_id = params[:id].to_i - 1
    @puzzle = Puzzle.find(params[:id])

    if !@puzzle.size.nil?

    else
      @width = @puzzle.grid.split('|', 2)[0].length
      @height = @puzzle.grid.split('|').count
    end
    if !@puzzle.block_count.nil?
      @black_squares = @puzzle.block_count
    else
      @black_squares = @puzzle.grid.count '.'
    end
    if !@puzzle.white_square_count.nil?
      @white_squares = @puzzle.white_square_count
    else
      @white_squares = @puzzle.grid.count "A-Z"
    end
    if !@puzzle.word_count.nil?
      @word_count = @puzzle.word_count
    else
      @word_count = @puzzle.entries.count
    end
    if !@puzzle.avg_word_length.nil?
      @avg_length = @puzzle.avg_word_length
    else
      @avg_length = ((@white_squares + @white_squares) / @word_count.to_f).round(2)
    end
    @letter_counts = Hash.new(0);
    @letter_order = ['E', 'T', 'A', 'O', 'I', 'N', 'S', 'H', 'R', 'D', 'L', 'C', 'U', 'M', 'W', 'F', 'G', 'Y', 'P', 'B', 'V', 'K', 'J', 'X', 'Q', 'Z']

    if @puzzle.sources[0].display_name.nil?
      @source_display_name = @puzzle.sources[0].name
    else
      @source_display_name = @puzzle.sources[0].display_name
    end

    if Puzzle.exists?(next_id)
      @next_puzzle = Puzzle.find(next_id)
    else
      @next_puzzle = nil
    end
    if Puzzle.exists?(prev_id)
      @prev_puzzle = Puzzle.find(prev_id)
    else
      @prev_puzzle = nil
    end

# fill arrays with clue content
    @a_clues = Array.new
    @d_clues = Array.new
    @grid_numbers = Hash.new('&nbsp;')
    @puzzle.entries.each do |e|
      if e.dir.eql?("Across")
	@a_clues.push(e)
      end
      if e.dir.eql?("Down")
	@d_clues.push(e)
      end
    # get numbers for grid
      @grid_numbers[e.row.to_s() + "_" + e.col.to_s()] = e.number.to_s();
    end

# get special grid features, if any
    spec_feat = Hash.new    
    if !@puzzle.special_features.nil?
      @puzzle.special_features.split('|').each do |f|
	spec_feat[f.split(':')[0]] = f.split(':')[1]
	if f.split(':')[1].start_with?("O") # if the grid has stuff outside the grid
	  @special_type = "outer"
	end
      end
    end

# parse grid string and create array of grid_squares
    @the_grid = Array.new
    current_row = Array.new
    row_num = 1
    col_num = 1
    @puzzle.grid.each_char do |i|
      this_gs = GridSquare.new
      case i
        when "|"  # end of grid row
	  @the_grid.push(current_row)
	  current_row = Array.new
	  row_num += 1
	  col_num = 1
        when "."	# black square
	  this_gs.class_name = "black_square"
	  this_gs.id_name = row_num.to_s + "_" + col_num.to_s
	  if !spec_feat[this_gs.id_name].nil? && spec_feat[this_gs.id_name].start_with?("B") # check if there's a letter in this black square
	    this_gs.contents = spec_feat[this_gs.id_name].gsub(/^./, '')
	    this_gs.class_name = "black_square_with_letter"
	  else
	    this_gs.contents = "&nbsp;".html_safe
	  end
	  col_num += 1
	  current_row.push(this_gs)
	when "#" # blank space in a grid with outer contents
	  this_gs.class_name = "no_display"
	  this_gs.contents = "&nbsp;".html_safe
	  this_gs.id_name = row_num.to_s + "_" + col_num.to_s
	  col_num += 1
	  current_row.push(this_gs)  
        else	# everything else - ie. contents of white square
	  this_gs.class_name = "white_square"
	  this_gs.id_name = row_num.to_s + "_" + col_num.to_s
	  this_gs.contents = i	  
	  if !spec_feat[this_gs.id_name].nil?
	    if spec_feat[this_gs.id_name].eql?("C")
	      this_gs.class_name += " circle"
	    end
	    if spec_feat[this_gs.id_name].start_with?("R") #rebus
	      this_gs.class_name += " rebus"
	      this_gs.contents = spec_feat[this_gs.id_name].gsub(/^./, '')
	    end
	    if spec_feat[this_gs.id_name].start_with?("N") #number with out clue
	      @grid_numbers[this_gs.id_name] = spec_feat[this_gs.id_name].gsub(/^./, '')
	    end
	    if spec_feat[this_gs.id_name].start_with?("O") #
	      if !spec_feat[this_gs.id_name].eql?("OD")
		this_gs.class_name = "no_display" # we overwrite in this case so that the css works
	      end
	    end
	  end
	  @letter_counts[i.upcase] += 1 # add to letter counts
	  col_num += 1
	  current_row.push(this_gs)
      end
    end   
    @the_grid.push(current_row) # need to add the last row, because in the loop we push it when starting a new row

# get theme/meta explanation
    if !@puzzle.explanation.nil? && !@puzzle.explanation.eql?('Coming soon...')
      if @puzzle.explanation.include? "<MA>"
	@meta_answer = @puzzle.explanation.gsub(/^.*\<MA\>(.*)\<\/MA\>.*$/, '\1')
	@theme_explanation = @puzzle.explanation.gsub(/^.*\<TEXT\>(.*)\<\/TEXT\>.*$/, '\1')
      else
	@meta_answer = nil
	@theme_explanation = @puzzle.explanation
      end
    end
  end

  def analyze
  end
end

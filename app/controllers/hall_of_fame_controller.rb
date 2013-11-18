class HallOfFameController < ApplicationController
  def index
  end

  def interesting
    @puzzles_by_type = Hash.new
    @puzzles_by_type.store("Schr&#246;dinger Puzzles", Array.new)
    @puzzles_by_type.store("Puzzles with Visual Elements", Array.new)
    @puzzles_by_type.store("Letters Outside of the Grid", Array.new)
    @puzzles_by_type.store("Two-way Rebuses", Array.new)
    @puzzles_by_type.store("Entries Turning Corners", Array.new)
    @puzzles_by_type.store("Diagonal Entries", Array.new)
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('MGWCC_117'))
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('MGWCC_169'))
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('MGWCC_203'))
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('MGWCC_222'))
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('GFP_29'))
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('BEQguest_30'))
    @puzzles_by_type["Schr&#246;dinger Puzzles"].push(Puzzle.find_by_seq_no('CN_49'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('MGWCC_154'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('GFP_29'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('BEQ_232'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('BEQ_502'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('JNZ_518'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('JNZ_525'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('GFP_32'))
    @puzzles_by_type["Puzzles with Visual Elements"].push(Puzzle.find_by_seq_no('CN_16'))
    @puzzles_by_type["Letters Outside of the Grid"].push(Puzzle.find_by_seq_no('BEQ_243'))
    @puzzles_by_type["Letters Outside of the Grid"].push(Puzzle.find_by_seq_no('MGWCC_195'))
    @puzzles_by_type["Letters Outside of the Grid"].push(Puzzle.find_by_seq_no('MGWCC_203'))
    @puzzles_by_type["Letters Outside of the Grid"].push(Puzzle.find_by_seq_no('20U30_11'))
    @puzzles_by_type["Letters Outside of the Grid"].push(Puzzle.find_by_seq_no('20U30_14'))
    @puzzles_by_type["Letters Outside of the Grid"].push(Puzzle.find_by_seq_no('20U30_20'))
    @puzzles_by_type["Two-way Rebuses"].push(Puzzle.find_by_seq_no('MGWCC_167'))
    @puzzles_by_type["Two-way Rebuses"].push(Puzzle.find_by_seq_no('BEQ_519'))
    @puzzles_by_type["Two-way Rebuses"].push(Puzzle.find_by_seq_no('20U30_16'))
    @puzzles_by_type["Two-way Rebuses"].push(Puzzle.find_by_seq_no('AK_12'))
    @puzzles_by_type["Two-way Rebuses"].push(Puzzle.find_by_seq_no('MGWCC_238'))
    @puzzles_by_type["Entries Turning Corners"].push(Puzzle.find_by_seq_no('20U30_7'))
    @puzzles_by_type["Diagonal Entries"].push(Puzzle.find_by_seq_no('MGWCC_195'))
    @puzzles_by_type["Diagonal Entries"].push(Puzzle.find_by_seq_no('MGWCC_238'))
  end

  def avg_word_length
    t_cutoff = 5.45
    f_cutoff = 5.95

    t_text = "Themed/meta, " + t_cutoff.to_s + " or Greater"
    f_text = "Freestyle, " + f_cutoff.to_s + " or Greater"

    @puzzles_by_awl = Hash.new
    @puzzles_by_awl.store(t_text, Array.new)
    @puzzles_by_awl.store(f_text, Array.new)
    Puzzle.find(:all).each do |p|
	this_awl = p.avg_word_length
	if !this_awl.nil?
	  if ((p.puzzle_type.eql? 'themed') || (p.puzzle_type.eql? 'meta'))
	    if (this_awl >= t_cutoff)
              @puzzles_by_awl[t_text].push(p)
	    end
	  elsif ((!p.puzzle_type.nil?) && (p.puzzle_type.match('freestyle')))
	    if (this_awl >= f_cutoff)
              @puzzles_by_awl[f_text].push(p)
	    end
	  end # of themed/freestyle if
        end # of nil check
    end # of Puzzle.each

    @puzzles_by_awl[t_text].sort! { |x,y| y.avg_word_length <=> x.avg_word_length }
    @puzzles_by_awl[f_text].sort! { |x,y| y.avg_word_length <=> x.avg_word_length }

  end # of avg word length

  def personal
    @puzzles_by_type = Hash.new
    @puzzles_by_type.store("Neat Grids", Array.new)
    @puzzles_by_type.store("Impressive", Array.new)
    @puzzles_by_type.store("Elegant", Array.new)
    @puzzles_by_type["Neat Grids"].push(Puzzle.find_by_seq_no('BEQ_232'))
    @puzzles_by_type["Neat Grids"].push(Puzzle.find_by_seq_no('BEQ_502'))
    @puzzles_by_type["Impressive"].push(Puzzle.find_by_seq_no('MGWCC_169'))
    @puzzles_by_type["Impressive"].push(Puzzle.find_by_seq_no('JNZ_501'))
    @puzzles_by_type["Elegant"].push(Puzzle.find_by_seq_no('20U30_16'))
  end

  def block_count
    @puzzles_by_bc = Hash.new
    Puzzle.find(:all).each do |p|
      if (p.size.eql? '15x15')
	if (p.block_count <= 25) || (p.block_count >= 42)
	  block_count = p.block_count.to_s + " BLOCKS"
          if @puzzles_by_bc.has_key?(block_count)
            @puzzles_by_bc[block_count].push(p)
          else
            @puzzles_by_bc.store(block_count, Array.new)
            @puzzles_by_bc[block_count].push(p)
          end
	end
      end # of if size == 15x15
    end # of Puzzle.each
  end

  def word_count
    @t_puzzles_by_wc = Hash.new #themed
    @f_puzzles_by_wc = Hash.new #freestyle
    Puzzle.find(:all).each do |p|
      if (p.size.eql? '15x15')
	this_count_i = p.entries.count
        this_count = p.entries.count.to_s + " WORDS"
	if ((p.puzzle_type.eql? 'themed') || (p.puzzle_type.eql? 'meta')) && ((this_count_i < 74) || (this_count_i > 80))
          if @t_puzzles_by_wc.has_key?(this_count)
            @t_puzzles_by_wc[this_count].push(p)
          else
            @t_puzzles_by_wc.store(this_count, Array.new)
            @t_puzzles_by_wc[this_count].push(p)
          end
	elsif (p.puzzle_type.eql? 'freestyle') && (this_count_i < 66)
          if @f_puzzles_by_wc.has_key?(this_count)
            @f_puzzles_by_wc[this_count].push(p)
          else
            @f_puzzles_by_wc.store(this_count, Array.new)
            @f_puzzles_by_wc[this_count].push(p)
          end
	end # of themed/freestyle if
      end # of if size == 15x15
    end # of Puzzle.each
  end # of word_count
end

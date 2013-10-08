class HallOfFameController < ApplicationController
  def index
  end

  def avg_word_length
  end

  def personal
    @puzzles_by_type = Hash.new
    @puzzles_by_type.store("cool_grids", Array.new)
    @puzzles_by_type.store("impressive", Array.new)
    @puzzles_by_type["cool_grids"].push(Puzzle.find_by_seq_no('BEQ_232'))
    @puzzles_by_type["cool_grids"].push(Puzzle.find_by_seq_no('BEQ_502'))
    @puzzles_by_type["impressive"].push(Puzzle.find_by_seq_no('MGWCC_169'))
  end

  def word_count

    @t_puzzles_by_wc = Hash.new #themed
    @f_puzzles_by_wc = Hash.new #freestyle
    Puzzle.find(:all).each do |p|
      if (p.size.eql? '15x15')
        this_count = p.entries.count
	if ((p.puzzle_type.eql? 'themed') || (p.puzzle_type.eql? 'meta')) && ((this_count < 74) || (this_count > 80))
          if @t_puzzles_by_wc.has_key?(this_count)
            @t_puzzles_by_wc[this_count].push(p)
          else
            @t_puzzles_by_wc.store(this_count, Array.new)
            @t_puzzles_by_wc[this_count].push(p)
          end
	elsif (p.puzzle_type.eql? 'freestyle') && (this_count < 66)
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

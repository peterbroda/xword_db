class PuzzlesController < ApplicationController
  def show
    next_id = params[:id].to_i + 1
    prev_id = params[:id].to_i - 1
    @puzzle = Puzzle.find(params[:id])
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
  end

  def analyze
  end
end

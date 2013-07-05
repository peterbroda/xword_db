class SourcesController < ApplicationController
  def show
    @source = Source.find(params[:id])

    @puzzles_by_year = Hash.new

    @source.puzzles.each do |p|
      this_date = p.publication_date.to_s[0,4]
      if @puzzles_by_year.has_key?(this_date)
        @puzzles_by_year[this_date].push(p)
      else
        @puzzles_by_year.store(this_date, Array.new)
        @puzzles_by_year[this_date].push(p)
      end
    end

  end
end

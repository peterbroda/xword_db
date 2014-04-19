class WordsController < ApplicationController
  def search
    @search_term = params[:search].upcase
    @results = Word.search(params[:search])
    @grouped_results = Hash.new
    @results.each do |w|
      @grouped_results[w] = w.solvables.length
    end
  end

  def show
    @word = Word.find(params[:id])
    render :layout => false
  end
end

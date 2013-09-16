class WordsController < ApplicationController
  def search
    @results = Word.search(params[:search])
  end

  def show
    @word = Word.find(params[:id])
  end
end

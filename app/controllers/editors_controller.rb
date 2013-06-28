class EditorsController < ApplicationController
  def show
    @editor = Editor.find(params[:id])
  end  

  def new
  end
end

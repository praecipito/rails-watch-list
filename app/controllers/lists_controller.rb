class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_param)
    if @list.save
      redirect_to @list, notice: 'List was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_param
    params.require(:list).permit(:name)
  end
end

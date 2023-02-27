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
end

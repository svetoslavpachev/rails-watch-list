class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark = Bookmark.new(strong_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.movie = @movie
    @bookmark.save
    redirect_to list_path(@list)
  end


private

def strong_params
  params.require(:bookmark).permit(:comment)
end

end

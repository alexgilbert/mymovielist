require_dependency 'mytmdb/movie'

class MoviesController < ApplicationController
  before_action :signed_in_user, only: [:own, :unown, :owned]

  def index
  end

  def show
    @mytmdb_movie = Mytmdb::Movie.new(params[:id])
    @configuration = @mytmdb_movie.configuration
    @movie = @mytmdb_movie.details    
    @images = @mytmdb_movie.images
    @cast = @mytmdb_movie.cast
    @trailers = @mytmdb_movie.trailers
    @similar_movies = @mytmdb_movie.similar_movies
  end

  def own
    title = params[:title]
    if current_user.own(params[:id])
      flash[:success] = "You now own #{title}!"
      redirect_to movie_path(params[:id])
    else
      flash[:error] = "Sorry, #{title} was not successfully saved as a movie you own."
      redirect_to my_movies_path
    end
  end

  def unown
    title = params[:title]
    if current_user.unown(params[:id])
      flash[:success] = "You no longer own #{title}."
      redirect_to my_movies_path
    else
      flash[:error] = "Sorry, #{title} was not successfully removed from your owned movies."
      redirect_to movie_path(params[:id])
    end
  end

  def owned
    @movies = current_user.movies.paginate(page: params[:page], per_page: 10)
    @configuration = Mytmdb.new.configuration
  end
end

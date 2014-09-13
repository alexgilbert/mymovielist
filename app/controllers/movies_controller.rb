require_dependency 'mytmdb/mytmdb_movie'

class MoviesController < ApplicationController

  def index
  end

  def show
    @mytmdb_movie = Mytmdb::MytmdbMovie.new(params[:id])
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
      redirect_to movies_path
    end
  end

  def unown
    title = params[:title]
    if current_user.unown(params[:id])
      flash[:success] = "You no longer own #{title}."
      redirect_to movies_path
    else
      flash[:error] = "Sorry, #{title} was not successfully removed from your owned movies."
      redirect_to movie_path(params[:id])
    end
  end
  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def setup_tmdb
    end
end

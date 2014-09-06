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

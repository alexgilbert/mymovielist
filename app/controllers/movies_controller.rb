require_dependency 'mytmdb/mytmdb_movie'

class MoviesController < ApplicationController

  def index
  end

  def show
    @tmdb = Mytmdb::MytmdbMovie.new(params[:id])
    @configuration = @tmdb.configuration
    @movie = @tmdb.movie    
    @images = @tmdb.images
    @cast = @tmdb.casts
    @trailers = @tmdb.trailers
    @similar_movies = @tmdb.similar_movies
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

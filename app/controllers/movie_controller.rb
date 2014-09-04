class MovieController < ApplicationController

  def index
  end

  def show
    @movie = TmdbMovie.detail(param[:id])    
    @images = TmdbMovie.images(params[:id])
    @cast = TmdbMovie.casts(params[:id])
    @trailers = TmdbMovie.trailers(params[:id])
    @similar_movies = TmdbMovie.similar_movies(params[:id])
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
end

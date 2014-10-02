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
    @movies = initialize_grid(current_user.movies.select("DISTINCT movies.*").joins(:classifications), include: [:genres], order: 'movies.title', per_page: 10)
    @configuration = Mytmdb.new.configuration
  end

  def now_playing
    @title = "Now Playing"
    @movies = Mytmdb::NowPlayingMovies.new.get
    render_index
  end

  def upcoming
    @title = "Upcoming"
    @movies = Mytmdb::UpcomingMovies.new.get
    render_index
  end

  def popular
    @title = "Popular"
    @movies = Mytmdb::PopularMovies.new.get
    render_index
  end

  def top_rated
    @title = "Top Rated"
    @movies = Mytmdb::TopRatedMovies.new.get
    render_index
  end
end

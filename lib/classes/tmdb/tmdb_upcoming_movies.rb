class TmdbUpcomingMovies < Tmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.upcoming
  end
end

class TmdbTopRatedMovies < Tmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.top_rated
end

class TmdbPopularMovies < Tmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.popular
  end
end

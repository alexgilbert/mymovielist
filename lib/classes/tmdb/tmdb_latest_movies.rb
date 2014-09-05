class TmdbLatestMovies < Tmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.latest
  end
end

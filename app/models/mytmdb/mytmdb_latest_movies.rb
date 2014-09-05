class MytmdbLatestMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.latest
    return @movies
  end
end

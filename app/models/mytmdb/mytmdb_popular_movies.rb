class MytmdbPopularMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.popular
  end
end

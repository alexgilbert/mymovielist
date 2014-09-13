class Mytmdb::PopularMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.popular
  end
end

class Mytmdb::TopRatedMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.top_rated
  end
end

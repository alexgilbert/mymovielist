class Mytmdb::UpcomingMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.upcoming
  end
end

class MytmdbUpcomingMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.upcoming
  end
end

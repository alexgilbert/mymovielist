class Mytmdb::UpcomingMovies < MovieGroup
  def get
    @results ||= Tmdb::Movie.upcoming
    return results_to_movie
  end
end

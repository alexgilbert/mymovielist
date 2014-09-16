class Mytmdb::TopRatedMovies < MovieGroup
  def get
    @results ||= Tmdb::Movie.top_rated
    return results_to_movie
  end
end

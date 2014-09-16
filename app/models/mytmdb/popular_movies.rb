class Mytmdb::PopularMovies < MovieGroup
  def get
    @results ||= Tmdb::Movie.popular
    return results_to_movie
  end
end

class Mytmdb::NowPlayingMovies < MovieGroup
  def get
    @results ||= Tmdb::Movie.now_playing
    return results_to_movie
  end
end

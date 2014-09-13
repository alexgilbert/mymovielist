class Mytmdb::NowPlayingMovies < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Movie.now_playing
  end
end

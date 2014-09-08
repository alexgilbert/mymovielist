class MytmdbTopRatedTv < Mytmdb
  @tv
  
  def get
    @tv ||= Tmdb::Tv.top_rated
  end
end

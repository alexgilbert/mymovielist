class MytmdbPopularTv < Mytmdb
  @movies
  
  def get
    @movies ||= Tmdb::Tv.popular
  end
end

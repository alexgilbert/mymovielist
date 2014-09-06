class MytmdbListGenres < Mytmdb
  @genres
  
  def get
    @genres ||= Tmdb::Genre.list
  end
end

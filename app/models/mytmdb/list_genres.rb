class Mytmdb::ListGenres < Mytmdb
  @genres
  
  def get
    @genres ||= Tmdb::Genre.list
  end
end

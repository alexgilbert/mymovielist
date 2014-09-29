class Mytmdb::GenreList < Mytmdb
  def get
    @genres ||= Tmdb::Genre.list
  end
end

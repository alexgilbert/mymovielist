class MytmdbSearchMovie < Mytmdb
  def find value
  	return Tmdb::Movie.find(value)
  end
end
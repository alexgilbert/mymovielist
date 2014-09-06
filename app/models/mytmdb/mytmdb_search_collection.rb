class MytmdbSearchCollection < Mytmdb
  def find value
  	return Tmdb::Collection.find(value)
  end
end
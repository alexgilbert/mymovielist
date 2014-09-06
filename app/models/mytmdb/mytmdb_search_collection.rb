class MytmdbSearchCollection < MytmdbSearch
  def find value
  	return results_to_mytmdb(Tmdb::Collection.find(value),"4")
  end
end
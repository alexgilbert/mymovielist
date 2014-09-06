class MytmdbSearchPerson < MytmdbSearch
  def find value
  	return results_to_mytmdb(Tmdb::person.find(value),"2")
  end
end
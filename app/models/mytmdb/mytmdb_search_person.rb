class MytmdbSearchPerson < Mytmdb
  def find value
  	return Tmdb::Person.find(value)
  end
end
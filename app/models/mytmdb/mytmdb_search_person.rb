class MytmdbSearchPerson < MytmdbSearch
  def find value
    @results = Tmdb::Person.find(value)
    return results_to_mytmdb("2")
  end
end

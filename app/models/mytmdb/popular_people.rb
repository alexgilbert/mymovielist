class Mytmdb::PopularPeople < MytmdbSearch
  def get
    @results ||= Tmdb::Person.popular
    return results_to_mytmdb("2")
  end
end

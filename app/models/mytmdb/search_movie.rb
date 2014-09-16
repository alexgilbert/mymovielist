class Mytmdb::SearchMovie < MytmdbSearch
  def find value
    @results = Tmdb::Movie.find(value)
    results_to_mytmdb("1")
  end
end

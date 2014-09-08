class MytmdbSearchTv < MytmdbSearch
  def find value
    @results = Tmdb::TV.find(value)
    return results_to_mytmdb("5")
  end
end

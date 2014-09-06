class MytmdbSearchCompany < MytmdbSearch
  def find value
  	return results_to_mytmdb(Tmdb::Company.find(value),"3")
  end
end
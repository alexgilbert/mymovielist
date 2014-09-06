class MytmdbSearchCompany < Mytmdb
  def find value
  	return Tmdb::Company.find(value)
  end
end
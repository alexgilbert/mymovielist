require_dependency 'mytmdb/mytmdb_search_movie'
require_dependency 'mytmdb/mytmdb_search_person'
require_dependency 'mytmdb/mytmdb_search_company'
require_dependency 'mytmdb/mytmdb_search_collection'

class SearchFactory
  def build s
  	case s
  	when 1
  		return MytmdbSearchMovie.new
  	when 2
  		return MytmdbSearchPerson.new
  	when 3
  		return MytmdbSearchCompany.new
  	when 4
  		return MytmdbSearchCollection.new
  	else
  		return nil
  	end
end

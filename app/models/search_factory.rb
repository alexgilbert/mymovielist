require_dependency 'mytmdb/mytmdb_search_movie'
require_dependency 'mytmdb/mytmdb_search_person'
require_dependency 'mytmdb/mytmdb_search_company'
require_dependency 'mytmdb/mytmdb_search_collection'
require_dependency 'mytmdb/mytmdb_search_tv'

class SearchFactory
  def self.build i
    return SEARCH_LIST[0][i.to_i][:search].constantize.new  	
  end
end

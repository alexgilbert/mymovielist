require_dependency 'mytmdb/search_movie'
require_dependency 'mytmdb/search_person'
require_dependency 'mytmdb/search_company'
require_dependency 'mytmdb/search_collection'
require_dependency 'mytmdb/search_tv'

class SearchFactory
  def self.build i
    return SEARCH_LIST[0][i.to_i][:search].constantize.new  	
  end
end

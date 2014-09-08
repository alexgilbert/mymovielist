require_dependency 'mytmdb/mytmdb_movie'
require_dependency 'mytmdb/mytmdb_person'
require_dependency 'mytmdb/mytmdb_company'
require_dependency 'mytmdb/mytmdb_collection'
require_dependency 'mytmdb/mytmdb_tv'

class MytmdbFactory
  def self.build i, id
    return SEARCH_LIST[0][i.to_i][:tmdb].constantize.new(id)  
  end
end

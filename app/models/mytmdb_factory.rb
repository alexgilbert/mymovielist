require_dependency 'mytmdb/movie'
require_dependency 'mytmdb/person'
require_dependency 'mytmdb/company'
require_dependency 'mytmdb/collection'
require_dependency 'mytmdb/tv'

class MytmdbFactory
  def self.build i, id
    return SEARCH_LIST[0][i.to_i][:tmdb].constantize.new(id)  
  end
end

require_dependency 'mytmdb/mytmdb_movie'
require_dependency 'mytmdb/mytmdb_person'
require_dependency 'mytmdb/mytmdb_company'
require_dependency 'mytmdb/mytmdb_collection'

class MytmdbFactory
  def self.build m, id
  	case m
    	when "1"
    		return MytmdbMovie.new(id)
    	when "2"
    		return MytmdbPerson.new(id)
    	when "3"
    		return MytmdbCompany.new(id)
    	when "4"
    		return MytmdbCollection.new(id)
    	else
    		return MytmdbMovie.new(id)
  	end
  end
end
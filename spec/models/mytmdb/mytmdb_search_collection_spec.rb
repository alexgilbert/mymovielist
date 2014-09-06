require 'spec_helper'
require 'mytmdb/mytmdb_search_collection'

describe MytmdbSearchCollection do

  before { @tmdb_search_collection = Mytmdb::MytmdbSearchCollection.new }

  subject { @tmdb_search_collection }

  it { should respond_to(:find) }
end

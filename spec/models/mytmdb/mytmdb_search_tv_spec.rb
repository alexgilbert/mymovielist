require 'spec_helper'
require 'mytmdb/mytmdb_search_tv'

describe MytmdbSearchTv do

  before { @tmdb_search_tv = Mytmdb::MytmdbSearchTv.new }

  subject { @tmdb_search_tv }

  it { should respond_to(:find) }
end

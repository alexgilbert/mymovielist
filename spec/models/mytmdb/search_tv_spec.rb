require 'spec_helper'
require 'mytmdb/search_tv'

describe Mytmdb::SearchTv do

  before { @tmdb_search_tv = Mytmdb::SearchTv.new }

  subject { @tmdb_search_tv }

  it { should respond_to(:find) }
end

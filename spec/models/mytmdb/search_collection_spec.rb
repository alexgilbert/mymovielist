require 'spec_helper'
require 'mytmdb/search_collection'

describe Mytmdb::SearchCollection do

  before { @tmdb_search_collection = Mytmdb::SearchCollection.new }

  subject { @tmdb_search_collection }

  it { should respond_to(:find) }
end

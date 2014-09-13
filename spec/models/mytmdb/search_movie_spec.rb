require 'spec_helper'
require 'mytmdb/search_movie'

describe Mytmdb::SearchMovie do

  before { @tmdb_search_movie = Mytmdb::SearchMovie.new }

  subject { @tmdb_search_movie }

  it { should respond_to(:find) }
end
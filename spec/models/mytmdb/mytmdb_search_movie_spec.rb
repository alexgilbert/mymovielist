require 'spec_helper'
require 'mytmdb/mytmdb_search_movie'

describe MytmdbSearchMovie do

  before { @tmdb_search_movie = Mytmdb::MytmdbSearchMovie.new }

  subject { @tmdb_search_movie }

  it { should respond_to(:find) }
end
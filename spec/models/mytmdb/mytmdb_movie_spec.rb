require 'spec_helper'
require 'mytmdb/mytmdb_movie'

describe MytmdbMovie do

  before do
    @tmdb_movie = Mytmdb::MytmdbMovie.new(id: 1) 
  end

  subject { @tmdb_movie }

  it { should respond_to(:movie) }
end

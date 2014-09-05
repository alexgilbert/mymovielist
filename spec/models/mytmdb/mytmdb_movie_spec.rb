require 'spec_helper'
require 'mytmdb/mytmdb_movie'

describe MytmdbMovie do

  before do
    @tmdb_movie = Mytmdb::MytmdbMovie.new(id: 1) 
  end

  subject { @tmdb_movie }

  it { should respond_to(:movie) }
  it { should respond_to(:find) }
  it { should respond_to(:images) }
  it { should respond_to(:casts) }
  it { should respond_to(:trailers) }
  it { should respond_to(:similar_movies) }
end

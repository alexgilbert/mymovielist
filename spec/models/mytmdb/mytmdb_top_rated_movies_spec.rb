require 'spec_helper'
require 'mytmdb/mytmdb_top_rated_movies'

describe MytmdbTopRatedMovies do

  before { @tmdb_movie = Mytmdb::MytmdbTopRatedMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

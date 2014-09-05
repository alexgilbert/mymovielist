require 'spec_helper'
require 'mytmdb/mytmdb_popular_movies.rb'

describe MytmdbPopularMovies do

  before { @tmdb_movie = Mytmdb::MytmdbPopularMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

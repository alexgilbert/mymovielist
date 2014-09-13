require 'spec_helper'
require 'mytmdb/popular_movies.rb'

describe Mytmdb::PopularMovies do

  before { @tmdb_movie = Mytmdb::PopularMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

require 'spec_helper'
require 'mytmdb/top_rated_movies'

describe Mytmdb::TopRatedMovies do

  before { @tmdb_movie = Mytmdb::TopRatedMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

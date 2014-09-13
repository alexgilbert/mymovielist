require 'spec_helper'
require 'mytmdb/latest_movies'

describe Mytmdb::LatestMovies do

  before { @tmdb_movie = Mytmdb::LatestMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

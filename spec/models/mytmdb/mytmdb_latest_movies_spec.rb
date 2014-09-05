require 'spec_helper'
require 'mytmdb/mytmdb_latest_movies'

describe MytmdbLatestMovies do

  before { @tmdb_movie = Mytmdb::MytmdbLatestMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

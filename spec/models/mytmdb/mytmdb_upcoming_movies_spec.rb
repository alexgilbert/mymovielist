require 'spec_helper'
require 'mytmdb/mytmdb_upcoming_movies'

describe MytmdbUpcomingMovies do

  before { @tmdb_movie = Mytmdb::MytmdbUpcomingMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

require 'spec_helper'
require 'mytmdb/upcoming_movies'

describe Mytmdb::UpcomingMovies do

  before { @tmdb_movie = Mytmdb::UpcomingMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

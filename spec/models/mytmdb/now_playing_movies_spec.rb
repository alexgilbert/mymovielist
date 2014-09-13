require 'spec_helper'
require 'mytmdb/now_playing_movies'

describe Mytmdb::NowPlayingMovies do

  before { @tmdb_movie = Mytmdb::NowPlayingMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

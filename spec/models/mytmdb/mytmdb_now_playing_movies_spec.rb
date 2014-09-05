require 'spec_helper'
require 'mytmdb/mytmdb_now_playing_movies'

describe MytmdbNowPlayingMovies do

  before { @tmdb_movie = Mytmdb::MytmdbNowPlayingMovies.new }

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

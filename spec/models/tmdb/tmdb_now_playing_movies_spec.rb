require 'spec_helper'

describe Tmdb::NowPlayingMovies do

  before do
    @tmdb_movie = Tmdb::NowPlayingMovies
  end

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

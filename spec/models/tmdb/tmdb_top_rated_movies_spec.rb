require 'spec_helper'

describe Tmdb::TopRatedMovies do

  before do
    @tmdb_movie = Tmdb::TopRatedMovies
  end

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

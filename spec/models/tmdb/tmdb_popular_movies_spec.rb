require 'spec_helper'

describe Tmdb::PopularMovies do

  before do
    @tmdb_movie = Tmdb::PopularMovies 
  end

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

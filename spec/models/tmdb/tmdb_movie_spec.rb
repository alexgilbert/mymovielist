require 'spec_helper'

describe Tmdb::TmdbMovie do

  before do
    @tmdb_movie = Tmdb::TmdbMovie.new(id: 1) 
  end

  subject { @tmdb_movie }

  it { should respond_to(:movie) }
end

require 'spec_helper'

describe Tmdb::UpcomingMovies do

  before do
    @tmdb_movie = Tmdb::UpcomingMovies
  end

  subject { @tmdb_movie }

  it { should respond_to(:get) }
end

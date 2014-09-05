require 'spec_helper'

describe Tmdb::TmdbLatestMovies do

  subject { Tmdb::TmdbLatestMovies }

  it { should respond_to(:get) }
end

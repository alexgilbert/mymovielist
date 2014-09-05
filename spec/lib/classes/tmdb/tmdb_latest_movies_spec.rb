require 'spec_helper'

describe Tmdb::LatestMovies do

  subject { Tmdb::LatestMovies }

  it { should respond_to(:get) }
end

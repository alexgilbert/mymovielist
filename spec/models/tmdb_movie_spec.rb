require 'spec_helper'

describe Tmdb::Movie do

  before do
    @tmdb_movie = Tmdb::Movie.new(id: 1) 
  end

  subject { @tmdb_movie }

  it { should respond_to(:id) }
end

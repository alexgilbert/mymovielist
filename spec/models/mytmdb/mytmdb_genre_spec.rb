require 'spec_helper'
require 'mytmdb/mytmdb_genre'

describe MytmdbGenre do

  before do
    @tmdb_genre = Mytmdb::MytmdbGenre.new(id: 1) 
  end

  subject { @tmdb_genre }

  it { should respond_to(:details) }
end

require 'spec_helper'
require 'mytmdb/mytmdb_collection'

describe MytmdbCollection do

  before do
    @tmdb_collection = Mytmdb::MytmdbCollection.new(id: 1) 
  end

  subject { @tmdb_collection }

  it { should respond_to(:details) }
  it { should respond_to(:images) }
end

require 'spec_helper'
require 'mytmdb/collection'

describe Mytmdb::Collection do

  before do
    @tmdb_collection = Mytmdb::Collection.new(id: 1) 
  end

  subject { @tmdb_collection }

  it { should respond_to(:details) }
  it { should respond_to(:images) }
end

require 'spec_helper'
require 'mytmdb/genre'

describe Mytmdb::Genre do

  before do
    @tmdb_genre = Mytmdb::Genre.new(id: 1) 
  end

  subject { @tmdb_genre }

  it { should respond_to(:details) }
end

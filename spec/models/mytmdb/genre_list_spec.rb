require 'spec_helper'
require 'mytmdb/genre_list.rb'

describe Mytmdb::GenreList do

  before { @tmdb_genre = Mytmdb::GenreList.new }

  subject { @tmdb_genre }

  it { should respond_to(:get) }
end

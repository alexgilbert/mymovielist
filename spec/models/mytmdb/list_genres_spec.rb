require 'spec_helper'
require 'mytmdb/list_genres.rb'

describe Mytmdb::ListGenres do

  before { @tmdb_genre = Mytmdb::ListGenres.new }

  subject { @tmdb_genre }

  it { should respond_to(:get) }
end

require 'spec_helper'
require 'mytmdb/mytmdb_list_genres.rb'

describe MytmdbListGenres do

  before { @tmdb_genre = Mytmdb::MytmdbListGenres.new }

  subject { @tmdb_genre }

  it { should respond_to(:get) }
end

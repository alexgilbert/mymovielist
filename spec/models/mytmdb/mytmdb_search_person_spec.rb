require 'spec_helper'
require 'mytmdb/mytmdb_search_person'

describe MytmdbSearchPerson do

  before { @tmdb_search_person= Mytmdb::MytmdbSearchPerson.new }

  subject { @tmdb_search_person }

  it { should respond_to(:find) }
end
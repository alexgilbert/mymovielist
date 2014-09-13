require 'spec_helper'
require 'mytmdb/search_person'

describe Mytmdb::SearchPerson do

  before { @tmdb_search_person= Mytmdb::SearchPerson.new }

  subject { @tmdb_search_person }

  it { should respond_to(:find) }
end
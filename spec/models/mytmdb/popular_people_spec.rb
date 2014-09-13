require 'spec_helper'
require 'mytmdb/popular_people.rb'

describe Mytmdb::PopularPeople do

  before { @tmdb_person = Mytmdb::PopularPeople.new }

  subject { @tmdb_person }

  it { should respond_to(:get) }
end

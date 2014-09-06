require 'spec_helper'
require 'mytmdb/mytmdb_popular_people.rb'

describe MytmdbPopularPeople do

  before { @tmdb_person = Mytmdb::MytmdbPopularPeople.new }

  subject { @tmdb_person }

  it { should respond_to(:get) }
end

require 'spec_helper'
require 'mytmdb/latest_people'

describe Mytmdb::LatestPeople do

  before { @tmdb_person = Mytmdb::LatestPeople.new }

  subject { @tmdb_person }

  it { should respond_to(:get) }
end

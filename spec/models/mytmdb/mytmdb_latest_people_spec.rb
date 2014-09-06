require 'spec_helper'
require 'mytmdb/mytmdb_latest_people'

describe MytmdbLatestPeople do

  before { @tmdb_person = Mytmdb::MytmdbLatestPeople.new }

  subject { @tmdb_person }

  it { should respond_to(:get) }
end

require 'spec_helper'
require 'mytmdb/person'

describe Mytmdb::Person do

  before do
    @tmdb_person = Mytmdb::Person.new(id: 1) 
  end

  subject { @tmdb_person }

  it { should respond_to(:details) }
  it { should respond_to(:credits) }
  it { should respond_to(:movie_credits) }
  it { should respond_to(:tv_credits) }
  it { should respond_to(:external_ids) }
  it { should respond_to(:images) }
  it { should respond_to(:tagged_images) }
  it { should respond_to(:changes) }
end

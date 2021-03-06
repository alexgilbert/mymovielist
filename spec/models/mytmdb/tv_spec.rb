require 'spec_helper'
require 'mytmdb/tv'

describe Mytmdb::Tv do

  before do
    @tmdb_tv = Mytmdb::Tv.new(id: 1) 
  end

  subject { @tmdb_tv }

  it { should respond_to(:details) }
  it { should respond_to(:images) }
  it { should respond_to(:cast) }
  it { should respond_to(:crew) }
  it { should respond_to(:external_ids) }
end

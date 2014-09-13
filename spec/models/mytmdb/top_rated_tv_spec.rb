require 'spec_helper'
require 'mytmdb/top_rated_tv'

describe Mytmdb::TopRatedTv do

  before { @tmdb_tv = Mytmdb::TopRatedTv.new }

  subject { @tmdb_tv }

  it { should respond_to(:get) }
end

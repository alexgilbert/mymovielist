require 'spec_helper'
require 'mytmdb/popular_tv.rb'

describe Mytmdb::PopularTv do

  before { @tmdb_tv = Mytmdb::PopularTv.new }

  subject { @tmdb_tv }

  it { should respond_to(:get) }
end

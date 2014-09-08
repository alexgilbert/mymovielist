require 'spec_helper'
require 'mytmdb/mytmdb_popular_tv.rb'

describe MytmdbPopularTv do

  before { @tmdb_tv = Mytmdb::MytmdbPopularTv.new }

  subject { @tmdb_tv }

  it { should respond_to(:get) }
end

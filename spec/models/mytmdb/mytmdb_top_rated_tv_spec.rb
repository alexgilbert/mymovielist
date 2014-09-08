require 'spec_helper'
require 'mytmdb/mytmdb_top_rated_tv'

describe MytmdbTopRatedTv do

  before { @tmdb_tv = Mytmdb::MytmdbTopRatedTv.new }

  subject { @tmdb_tv }

  it { should respond_to(:get) }
end

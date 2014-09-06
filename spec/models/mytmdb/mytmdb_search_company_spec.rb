require 'spec_helper'
require 'mytmdb/mytmdb_search_company'

describe MytmdbSearchCompany do

  before { @tmdb_search_company = Mytmdb::MytmdbSearchCompany.new }

  subject { @tmdb_search_company }

  it { should respond_to(:find) }
end
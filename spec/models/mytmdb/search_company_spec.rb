require 'spec_helper'
require 'mytmdb/search_company'

describe Mytmdb::SearchCompany do

  before { @tmdb_search_company = Mytmdb::SearchCompany.new }

  subject { @tmdb_search_company }

  it { should respond_to(:find) }
end
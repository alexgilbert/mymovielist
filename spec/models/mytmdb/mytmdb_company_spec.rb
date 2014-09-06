require 'spec_helper'
require 'mytmdb/mytmdb_company'

describe MytmdbCompany do

  before do
    @tmdb_company = Mytmdb::MytmdbCompany.new(id: 1) 
  end

  subject { @tmdb_company }

  it { should respond_to(:company) }
  it { should respond_to(:movies) }
end

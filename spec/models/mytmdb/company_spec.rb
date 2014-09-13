require 'spec_helper'
require 'mytmdb/company'

describe Mytmdb::Company do

  before do
    @tmdb_company = Mytmdb::Company.new(id: 1) 
  end

  subject { @tmdb_company }

  it { should respond_to(:details) }
  it { should respond_to(:movies) }
end

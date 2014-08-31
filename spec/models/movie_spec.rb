require 'spec_helper'

describe Movie  do

  before do
    @movie = Movie.new(imdb_id: "test92034id", title: "Test Movie", release_date: "2014-08-31", runtime: 200, adult: false, overview: "Trilling application with great testing") 
  end

  subject { @movie }

  it { should respond_to(:imdb_id) }
  it { should respond_to(:title) }
  it { should respond_to(:release_date) }
  it { should respond_to(:runtime) }
  it { should respond_to(:adult) }
  it { should respond_to(:overview) }
  it { should respond_to(:users) }

  describe "when imdb_id not present" do
    before { @movie.imdb_id = " " }
    it { should_not be_valid }
  end

  describe "when title not present" do
    before { @movie.title = " " }
    it { should_not be_valid }
  end

  describe "when release_date not present" do
    before { @movie.release_date  = " " }
    it { should_not be_valid }
  end
end

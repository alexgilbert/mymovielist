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
  it { should respond_to(:tmdb_movie) }

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

  describe "when release_date is string" do
    before { @movie.release_date = "string" }
    it { should_not be_valid }
  end

  describe "when release_date is in future" do
    before { @movie.release_date = Proc.new { 10.days.from_now }.to_s }
    it { should_not be_valid }
  end

  describe "when runtime is string" do
    before { @movie.runtime = "string" }
    it { should_not be_valid }
  end

  describe "user associations" do
    before { @movie.save }
    let(:user) { FactoryGirl.create(:user) }
    let!(:own) do
      FactoryGirl.create(:own, user: user, movie: @movie) 
    end

    it "should have user association" do
      expect(@movie.users).not_to be_empty
    end

    it "should have correct user association" do
      expect(@movie.users.to_a).to eq [user]
    end

    it "should destroy associated user" do
      users = @movie.users.to_a
      movie_id = @movie.id
      @movie.destroy
      expect(users).not_to be_empty
      users.each do |user|
        expect(Own.where(movie_id: movie_id, user_id: user.id)).to be_empty
      end
    end
  end
end

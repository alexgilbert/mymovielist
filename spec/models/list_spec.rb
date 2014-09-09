require 'spec_helper'

describe List do

  before do
    @user = FactoryGirl.create(:user)
    @list = List.new(name: "Test Name", user_id: @user.id)
  end

  subject { @list }

  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  it { should respond_to(:movies) }
  it { should respond_to(:users) }

  describe "when name not present" do
    before { @list.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id not present" do
    before { @list.user_id = " " }
    it { should_not be_valid }
  end

  describe "movie associations" do
    before { @list.save }
    let(:movie) { FactoryGirl.create(:movie) }
    let!(:item) do
      FactoryGirl.create(:item, list: @list, movie: movie)
    end

    it "should have movie association" do
      expect(@list.movies).not_to be_empty
    end

    it "should have correct movie association" do
      expect(@list.movies.to_a).to eq [movie]
    end

    it "should destroy associated movie" do
      movies = @list.movies.to_a
      list_id = @list.id
      @list.destroy
      expect(movies).not_to be_empty
      movies.each do |movie|
        expect(Item.where(movie_id: movie.id, list_id: list_id)).to be_empty
      end
    end
  end
  
  describe "users associations" do
    before { @list.save }
    let(:read_only_user) { FactoryGirl.create(:user) }
    let(:writable_user) { FactoryGirl.create(:user) }
    let!(:read_share) do
      FactoryGirl.create(:share, list: @list, user: read_only_user)
    end
    let!(:write_share) do
      FactoryGirl.create(:writable, list: @list, user: writable_user)
    end

    it "should have users association" do
      expect(@list.users).not_to be_empty
    end

    it "should have correct users association" do
      expect(@list.users.to_a).to  include(read_only_user, writable_user)
    end

    it "should destroy associated shares" do
      users = @list.users.to_a
      list_id = @list.id
      @list.destroy
      expect(users).not_to be_empty
      users.each do |user|
        expect(Share.where(user_id: user.id, list_id: list_id)).to be_empty
      end
    end
  end
end

require 'spec_helper'

describe Own do

  before do
    @user = FactoryGirl.create(:user)
    @movie = FactoryGirl.create(:movie)
    @own = Own.new(user_id: @user.id, movie_id: @movie.id)
  end

  subject { @own }

  it { should respond_to(:user_id) }
  it { should respond_to(:movie_id) }
  it { should respond_to(:user) }
  it { should respond_to(:movie) }

  describe "when user_id not present" do
    before { @own.user_id = " " }
    it { should_not be_valid }
  end

  describe "when movie_id not present" do
    before { @own.movie_id = " " }
    it { should_not be_valid }
  end
end

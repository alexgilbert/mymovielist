require 'spec_helper'

describe MovieOwner do

  before do
    @user = FactoryGirl.create(:user)
    @movie_owner = MovieOwner.new(@user.id)
    @movie = FactoryGirl.create(:movie)
  end

  subject { @movie_owner }

  it { should respond_to(:own) }
  
  describe "own a non existent movie" do
    before { @movie_owner.own("100") }
    let(:movie) { Movie.find_by_imdb_id("100") }
    
    describe "movie should be created" do
      specify { expect(:movie).to_not be_empty }

      describe "and be the latest movie" do
        let(:last_movie) { Movie.last }
        specify { expect(last_movie).to eq(movie) }
      end
    end

    describe "own association should be created" do
      let(:own) { Own.last }
      specify { expect(:own).to_not be_empty }
      
      describe "and have the correct owner" do
        specify { expect(own.user_id).to eq(@user.id) }
      end

      describe "and have the correct movie" do
        specify { expect(own.movie_id).to eq(movie.id) }
      end
    end
  end
  
  describe "own an existing movie" do
    before { @movie_owner.own(@movie.imdb_id) }
    let(:movie) { Movie.find_by_imdb_id(@movie.imdb_id) }

    describe "movie should be created" do
      specify { expect(:movie).to_not be_empty }
    end

    describe "own association should be created" do
      let(:own) { Own.last }
      specify { expect(:own).to_not be_empty }
      
      describe "and have the correct owner" do
        specify { expect(own.user_id).to eq(@user.id) }
      end

      describe "and have the correct movie" do
        specify { expect(own.movie_id).to eq(movie.id) }
      end
    end
  end
end

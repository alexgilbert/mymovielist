require 'spec_helper'

describe MovieOwner do
  
  before do
    user = FactoryGirl.create(:user)
    @movie_owner = MovieOwner.new(user.id)
  end
 
  subject { @movie_owner }
  
  let(:user) { User.find(subject.user_id) }
  let(:movie) { FactoryGirl.create(:movie) }

  it { should respond_to(:own) }
  it { should respond_to(:owns?) }
  it { should respond_to(:unown) }
  
  it "own? an owned movie" do
    subject.own(movie.imdb_id)
    expect { subject.owns?(movie.imdb_id).should be_true }
  end

  it "own? an unowned movie" do
    expect { subject.owns?(movie.imdb_id).should_not be_true }
  end

  describe "unown a movie" do
    before { subject.own(movie.imdb_id) }
       
    describe "should remove association" do
      before { subject.unown(movie.imdb_id) }

      let(:association) { user.owns.find_by(movie_id: movie.id) }
      specify { expect(association).to be_nil }
    end
  end
      
  describe "own a non existent movie" do
    before { subject.own("100") }

    let(:found_movie) { Movie.find_by_imdb_id("100") }
    
    describe "movie should be created" do
      specify { expect(found_movie).to_not be_nil }
    end

    describe "own association should be created" do
      let(:own) { Own.last }
      specify { expect(own).to_not be_nil }
      
      describe "and have the correct owner" do
        specify { expect(own.user_id).to eq(user.id) }
      end

      describe "and have the correct movie" do
        specify { expect(own.movie_id).to eq(found_movie.id) }
      end
    end
  end
 
  describe "own an existing movie" do
    before { subject.own(movie.imdb_id) }
    let(:found_movie) { Movie.find_by_imdb_id(movie.imdb_id) }

    describe "movie should be created" do
      specify { expect(movie).to_not be_nil }
    end

    describe "own association should be created" do
      let(:own) { Own.last }
      specify { expect(own).to_not be_nil }
      
      describe "and have the correct owner" do
        specify { expect(own.user_id).to eq(user.id) }
      end

      describe "and have the correct movie" do
        specify { expect(own.movie_id).to eq(found_movie.id) }
      end
    end
  end
end

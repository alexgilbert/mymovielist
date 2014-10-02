require 'spec_helper'

describe Genre do

  before do
    @genre = Genre.new(name: "Genre 1")
  end

  subject { @genre }

  it { should respond_to(:name) }
  it { should respond_to(:movies) }

  describe "when name not present" do
    before { @genre.name = " " }
    it { should_not be_valid }
  end

  describe "movie associations" do
    before { @genre.save }
    let(:movie) { FactoryGirl.create(:movie) }
    let!(:classification) do
      FactoryGirl.create(:classification, genre: @genre, movie: movie)
    end

    it "should have movie association" do
      expect(@genre.movies).not_to be_empty
    end

    it "should have correct movie association" do
      expect(@genre.movies.to_a).to eq [movie]
    end

    it "should destroy associated movie" do
      movies = @genre.movies.to_a
      genre_id = @genre.id
      @genre.destroy
      expect(movies).not_to be_empty
      movies.each do |movie|
        expect(Classification.where(movie_id: movie.id, genre_id: genre_id)).to be_empty
      end
    end
  end
end

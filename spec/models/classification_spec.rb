describe Classification do

  before do
    @genre = FactoryGirl.create(:genre)
    @movie = FactoryGirl.create(:movie)
    @classification = Classification.new(genre_id: @genre.id, movie_id: @movie.id)
  end

  subject { @classification }

  it { should respond_to(:genre_id) }
  it { should respond_to(:movie_id) }
  it { should respond_to(:genre) }
  it { should respond_to(:movie) }

  describe "when genre_id not present" do
    before { @classification.genre_id = " " }
    it { should_not be_valid }
  end

  describe "when movie_id not present" do
    before { @classification.movie_id = " " }
    it { should_not be_valid }
  end
end

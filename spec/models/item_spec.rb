require 'spec_helper'

describe Item do

  before do
    @list = FactoryGirl.create(:list)
    @movie = FactoryGirl.create(:movie)
    @item = Item.new(list_id: @list.id, movie_id: @movie.id)
  end

  subject { @item}

  it { should respond_to(:list_id) }
  it { should respond_to(:movie_id) }
  it { should respond_to(:list) }
  it { should respond_to(:movie) }

  describe "when list_id not present" do
    before { @item.list_id = " " }
    it { should_not be_valid }
  end

  describe "when movie_id not present" do
    before { @item.movie_id = " " }
    it { should_not be_valid }
  end
end

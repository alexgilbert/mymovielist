require 'spec_helper'

describe List  do

  before do
    @user = FactoryGirl.create(:user)
    @list = List.new(name: "Test Name", user_id: @user.id)
  end

  subject { @list }

  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  #it { should respond_to(:movies) }

  describe "when name not present" do
    before { @list.name = " " }
    it { should_not be_valid }
  end

  describe "when user_id not present" do
    before { @list.user_id = " " }
    it { should_not be_valid }
  end
end

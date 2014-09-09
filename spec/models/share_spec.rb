require 'spec_helper'

describe Share do

  before do
    @list = FactoryGirl.create(:list)
    @user = FactoryGirl.create(:user)
    @share = Share.new(list_id: @list.id, user_id: @user.id)
  end

  subject { @share }

  it { should respond_to(:list_id) }
  it { should respond_to(:user_id) }
  it { should respond_to(:writable) }
  it { should respond_to(:list) }
  it { should respond_to(:user) }

  describe "when list_id not present" do
    before { @share.list_id = " " }
    it { should_not be_valid }
  end

  describe "when user_id not present" do
    before { @share.user_id = " " }
    it { should_not be_valid }
  end
end

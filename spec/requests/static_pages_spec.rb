require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Application Name') }
    it { should have_title('') }
    it { should_not have_title('| Home') }

    describe "Click signup button" do
      before { click_link "Sign up now!" }

      it { should have_title('Sign up') }
      it { should have_content('Sign up') }
    end
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title('Help') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title('About Us') }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title('Contact') }
  end
end

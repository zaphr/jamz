require 'spec_helper'

describe PagesController do
  include Devise::TestHelpers

  render_views

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'tuner'" do
    it "should be successful" do
      get 'tuner'
      response.should be_success
    end

    it "should have a tuner div" do
      get 'tuner'
      response.should have_selector('div#tuner')
    end

    it "should have a link to the providers of the tuner" do
      get 'tuner'
      response.should have_selector('a',
                                    :href => "http://www.wimpyplayer.com",
                                    :content => "Wimpy Player")
    end

  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

end

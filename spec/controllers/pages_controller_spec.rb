require 'spec_helper'

describe PagesController do
  render_ciews

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title"
      get 'home'
      response.should have_selector("title",
              :content => "Ruby on Rails Tutorial Sample App | Home")
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
        it "should have the right title"
      get 'contact'
      response.should have_selector("title",
              :content => "Ruby on Rails Tutorial Sample App | contace")
  end
  
  it "should have a non_blank body" do
    get 'home'
    response.body.should_not =~ /<body>\s*<\/body>
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
        it "should have the right title"
      get 'about'
      response.should have_selector("title",
              :content => "Ruby on Rails Tutorial Sample App | about")
  end
  end
end

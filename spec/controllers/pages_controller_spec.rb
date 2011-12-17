require 'spec_helper'

describe PagesController do
	render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "deveria ter o titulo Home" do
      get 'home'
      response.should have_selector("title", :content => "AdsItape.com | Home")
    end
  end

  describe "GET 'novidades'" do
    it "returns http success" do
      get 'novidades'
      response.should be_success
    end
    it "deveria ter o titulo Novidades" do
      get 'novidades'
      response.should have_selector("title", :content => "AdsItape.com | Novidades")
    end    
  end

  describe "GET 'contribua'" do
    it "returns http success" do
      get 'contribua'
      response.should be_success
    end
    it "deveria ter o titulo Contribua" do
      get 'contribua'
      response.should have_selector("title", :content => "AdsItape.com | Contribua")
    end      
  end

  describe "GET 'cronograma'" do
    it "returns http success" do
      get 'cronograma'
      response.should be_success
    end
    it "deveria ter o titulo cronograma" do
      get 'cronograma'
      response.should have_selector("title", :content => "AdsItape.com | Cronograma")
    end      
  end

end

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

  describe "GET 'historico'" do
    it "returns http success" do
      get 'historico'
      response.should be_success
    end
    it "deveria ter o titulo Historico" do
      get 'historico'
      response.should have_selector("title", :content => "AdsItape.com | Historico")
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
  
  describe "GET 'tutoriais'" do
    it "returns http success" do
      get 'tutoriais'
      response.should be_success
    end
    it "deveria ter o titulo tutoriais" do
      get 'tutoriais'
      response.should have_selector("title", :content => "AdsItape.com | Tutoriais")
    end      
  end  
  
  describe "GET 'infraestrutura'" do
    it "returns http success" do
      get 'infraestrutura'
      response.should be_success
    end
    it "deveria ter o titulo tutoriais" do
      get 'infraestrutura'
      response.should have_selector("title", :content => "AdsItape.com | Infra-Estrutura")
    end      
  end   
  
  describe "GET 'sobre'" do
    it "returns http success" do
      get 'sobre'
      response.should be_success
    end
    it "deveria ter o titulo Sobre" do
      get 'sobre'
      response.should have_selector("title", :content => "AdsItape.com | Sobre")
    end      
  end  
  
  describe "GET 'contato'" do
    it "returns http success" do
      get 'contato'
      response.should be_success
    end
    it "deveria ter o titulo Contato" do
      get 'contato'
      response.should have_selector("title", :content => "AdsItape.com | Contato")
    end      
  end  

end

require 'spec_helper'

describe "PagesLinks" do
  
  it " / deveria ser a página Home" do
    get '/'
    response.should have_selector 'title', :content => 'Home'
  end
  
  it " /contribua deveria a página Contribua" do
    get '/contribua'
    response.should have_selector 'title', :content => 'Contribua'
  end
  
  it " /historico deveria ser a pagina Historico" do
    get '/historico'
    response.should have_selector 'title', :content => 'Historico'
  end
  
  it " /cronograma deveria a página Cronograma" do
    get '/cronograma'
    response.should have_selector 'title', :content => 'Cronograma'
  end
    
  it " /tutoriais deveria ser a página Tutoriais" do
    get '/tutoriais'
    response.should have_selector 'title', :content => 'Tutoriais'
  end
  
  it " /infraestrutura deveria a página Infra-Estruturua" do
    get '/infraestrutura'
    response.should have_selector 'title', :content => 'Infra-Estrutura'
  end  
  
  it " /sobre deveria ser a página sobre" do
    get '/sobre'
    response.should have_selector 'title', :content => 'Sobre'
  end
  
  it " /contato deveria a página Contato" do
    get '/contato'
    response.should have_selector 'title', :content => 'Contato'
  end  
  
  
end

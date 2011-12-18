class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def novidades
    @title = "Novidades"
  end

  def contribua
    @title = "Contribua"
  end

  def cronograma
    @title = "Cronograma"
  end
  
  def tutoriais
    @title = "Tutoriais, Guias e outros"
  end
  
  def infraestrutura
    @title = "Infra-Estrutura"
  end

  def sobre
    @title = "Sobre AdsItape.com"
  end
  
  def contato
    @title = "Contato"
  end  

end

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

end

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    repond_to do |format|
      format.html 
    end
  end
end

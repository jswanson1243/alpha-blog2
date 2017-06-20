class ArticlesController < ApplicationController
  def new 
    @article = Article.new
    
  end
  
  def create
   #render plain: perams[:article].inspect
   @article = Article.new(article_perams)
   @article.save
   redirect_to articles_show(@article)
  end
  
  private
    def article_perams
      perams.require(:article).permit(:title, :description)
    end
  
end
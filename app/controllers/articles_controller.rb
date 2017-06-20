class ArticlesController < ApplicationController
  def new 
    @article = Article.new
    
  end
  
  def create
   #render plain: perams[:article].inspect
   @article = Article.new(article_perams)
   if @article.save
     flash[:notice] = "The article was successfully created"
   #@article.save
   redirect_to article_path(@article)
 else 
   render 'new'
 end
end

def show
  @article = Article.find(params[:id])
end
  
  private
    def article_perams
      params.require(:article).permit(:title, :description)
    end
  
end
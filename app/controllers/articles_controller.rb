class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Please ensure you've completed both fields."
      render('new')
    end    
  end

  def show
  end

  def index
    @articles = Article.all
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
  
end

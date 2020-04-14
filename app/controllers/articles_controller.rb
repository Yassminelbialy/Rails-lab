class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new; end

  def create
    @article = Article.new(check_params)

    @article.save
    redirect_to @article
  end

  def check_params
    params.require(:article).permit(:title, :text)
  end

  def show
    @article = Article.find(params[:id])
  end
end

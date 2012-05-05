class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find_by_id(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "Article added"
      redirect_to articles_url
    else
      flash[:error] = "Please try again."
      render 'new'
    end
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    if article.update_attributes(params[:artcile])
      flash[:success] = "Updated"
      redirect_to article_url
    else
      flash[:error] = "Please try again"
      render 'edit'
    end
  end

  def destroy
    Article.find_by_id(params[:id]).destroy
    flash[:sucess] = "Article has been deleted."
    redirect_to articles_url
  end

end

# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    # re-ordering aricles based on create at date, with most recently
    # created articles at the top
    @articles = Article.all.order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      # rails calls the show action
      redirect_to @article
      # render plain: params[:article].inspect
    else
      render 'edit'
    end
  end

  # if nothing defined in create method then by default rails will
  # return response 204 no content
  def create
    puts " ##########################  #{params[:article].inspect}"

    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    if @article.save
      # rails calls the show action
      redirect_to @article
      # render plain: params[:article].inspect
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    # rails calls the show action
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end

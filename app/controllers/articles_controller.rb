# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    render json: Article.all
  end

  def show
    render json: Article.find(params[:id])
  end

  def create
    article = Article.create(article_params)

    render json: article, status: :created
  end

  def update
    article = Article.find(params[:id])

    article.update(article_params)

    render json: article.reload
  end

  def destroy
    Article.find(params[:id]).destroy

    head :no_content
  end

  private

  def article_params
    params.require(:article).permit(
      :featured,
      :title,
      :url,
      :image_url,
      :news_site,
      :summary
    )
  end
end

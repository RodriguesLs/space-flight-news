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

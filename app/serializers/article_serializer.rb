# frozen_string_literal: true

class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :featured, :title, :url, :image_url, :news_site,
             :summary, :published_at, :updated_at, :launches, :events

  has_many :events, only: :id

  def events
    object.events.map { |e| { id: e.external_id, provider: e.provider } }
  end

  def launches
    object.launches.map { |l| { id: l.external_id, provider: l.provider } }
  end
end

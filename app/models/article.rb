class Article < ApplicationRecord
  has_many :launches
  has_many :events

  validates :title, presence: true

  before_save :set_published_at

  def set_published_at
    self.published_at = Time.zone.now
  end
end

class Article < ApplicationRecord
  has_many :launches
  has_many :events

  validates :title, presence: true
end

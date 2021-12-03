class Article < ApplicationRecord
  belongs_to :launch
  belongs_to :event

  validates :title, presence: true
end

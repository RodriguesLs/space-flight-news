class Event < ApplicationRecord
  validates :provider, presence: true
end

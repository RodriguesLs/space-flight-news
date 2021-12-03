class Article < ApplicationRecord
  belongs_to :launch
  belongs_to :event
end

class Launch < ApplicationRecord
  belongs_to :article

  validates :provider, presence: true
end

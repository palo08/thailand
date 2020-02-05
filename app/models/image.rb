class Image < ApplicationRecord
  belongs_to :shop
  validates :image, presence: true
end

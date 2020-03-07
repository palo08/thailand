class Area < ApplicationRecord
  has_many :shops
  validates :area, presence: true, uniqueness: true
end

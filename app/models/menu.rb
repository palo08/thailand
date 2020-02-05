class Menu < ApplicationRecord
  belongs_to :shop
  validates :name, presence: true
  validates :treatment_time, presence: true
  validates :fee, presence: true
end

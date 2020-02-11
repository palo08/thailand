class Shop < ApplicationRecord
  has_many :images
  has_many :reservations
  has_many :menus
  belongs_to :area, optional: true
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true


  
  # Shopからキーワードで検索する
  def self.search(search)
    return Shop.all unless search
    search = "%#{search}%"
    Shop.where('name LIKE(?)', "%#{search}%")
  end

  # Shopからselectboxでエリア検索
  def self.select(search)
    return Shop.all unless search
    Shop.where("area_id = ?", search.to_i)
  end

end

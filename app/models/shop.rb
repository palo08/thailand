class Shop < ApplicationRecord
  has_many :images
  has_many :reservations
  has_many :menus
  belongs_to :area
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true


  # エリア検索
  def self.checkbox(search)
    return Shop.all unless search
    Shop.find_by_sql(["select * from shops where area_id = ?", search.to_i])
  end


  # キーワード検索
  def self.search(search)
    return Shop.all unless search
    search = "%#{search}%"
    Shop.where('name LIKE(?)', "%#{search}%")
  end

end

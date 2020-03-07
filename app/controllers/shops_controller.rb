class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  # Shopからキーワードを含む店舗を検索
  def search
    @shops = Shop.search(params[:name])
  end

  # Shopからselectboxで選んだエリアを検索
  def select
    @shops = Shop.select(params[:area])
  end


end

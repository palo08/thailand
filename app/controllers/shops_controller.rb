class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  # Shopからキーワードで検索する
  def search
    @shops = Shop.search(params[:name])
  end

  # Shopからselectboxでエリア検索
  def select
    @shops = Shop.select(params[:area])
  end


end

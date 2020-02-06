class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  # エリア検索(jQuery)
  # def search
  #   # binding.pry
  #   @shops = Shop.search(params[:area_id])
  #   respond_to do |format|
  #     format.html
  #     format.json
  #   end
  # end

  # キーワード検索
  def search
    @shops = Shop.search(params[:name])
  end

  # エリア検索
  def select
    @shops = Shop.select(params[:area])
  end


end

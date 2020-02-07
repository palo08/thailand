require 'rails_helper'

describe ShopsController, type: :controller do
  describe 'GET #index' do
    it "populates an array of shops" do
      shops = create_list(:shop, 3)
      get :index
      expect(assigns(:shops)).to match(shops)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "assigns the requested shop to @shop" do
      shop = create(:shop)
      get :show, params: { id: shop }
      expect(assigns(:shop)).to match(shop)
    end
    it "renders the :show template" do
      shop = create(:shop)
      get :show, params: { id: shop }
      expect(response).to render_template :show
    end
  end

  describe 'GET #search' do
    it "populates an array of search shops" do
      shops = create_list(:shop, 3)
      get :search
      expect(assigns(:shops)).to match(shops)
    end

    it "renders the :search template" do
      get :search
      expect(response).to render_template :search
    end
  end

  describe 'GET #select' do
    it "populates an array of select shops" do
      shops = create_list(:shop, 3)
      get :select
      expect(assigns(:shops)).to match(shops)
    end

    it "renders the :select template" do
      get :select
      expect(response).to render_template :select
    end
  end
end
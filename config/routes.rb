Rails.application.routes.draw do
  devise_for :users

  root 'shops#index'

  resources :shops do
    collection do
      get 'search'
    end
    collection do
      get 'checkbox'
    end
  end

end

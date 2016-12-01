Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: 'products#index'

  resources :users, only: [:show]

  resources :profiles, only: [:new, :edit, :create, :update]

  resources :photos

  resources :products do
    collection do
      get 'order_by_name'
      get 'order_by_price'
      get 'order_by_created_at'
    end
  end

  resources :categories

  resources :line_items

end

Rails.application.routes.draw do
  root 'shops#index'
  #root 'products#index'
  devise_for :users, controller: {
    registrations: 'registrations'
  }
  resources :products
  resources :shops, only:[:index, :show]
  resources :order_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
end

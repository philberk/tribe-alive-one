Rails.application.routes.draw do
  root 'products#index'
  devise_for :users, controller: {
    registrations: 'registrations'
  }
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get 'search', to: 'products#search'
end

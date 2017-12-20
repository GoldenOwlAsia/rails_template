Rails.application.routes.draw do
  devise_for :users

  match '/contacts', to: 'contacts#new', via: 'get'
  resources :contacts, only: [:new, :create]

  mount RailsDb::Engine => '/db', :as => 'db'
  root 'home#index'
end

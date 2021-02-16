Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'contact_form/new'
  get 'contact_form/create'
  resources :add_taxis
  resources :addtaxis
  resources :contact_forms
  #get 'home/index'
  get 'home/about'
  root 'home#index'

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



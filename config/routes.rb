Rails.application.routes.draw do
  # get 'payments/index'
  # get 'payments/show'
  # get 'payments/new'
  # get 'payments/create'
  # get 'payments/edit'
  # get 'payments/update'
  # get 'payments/destroy'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/create'
  # get 'categories/edit'
  # get 'categories/update'
  # get 'categories/destroy'
  # get 'user/index'
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :categories do
    resources :payments
  end
  devise_for :users
  devise_scope :user do
    get '/logout', to: 'devise/sessions#destroy'
  end
  root to: 'user#index'
end

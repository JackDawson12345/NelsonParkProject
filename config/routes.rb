Rails.application.routes.draw do
  resources :invoices


  root to: "home#index"





  devise_for :users

  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
  end




end

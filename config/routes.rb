Rails.application.routes.draw do
  
  root to: "home#index"


  devise_for :users
  resources :board
  resources :team do
    resources :task
    resources :unit
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 

  
end

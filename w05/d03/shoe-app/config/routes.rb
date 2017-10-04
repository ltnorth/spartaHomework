Rails.application.routes.draw do
  devise_for :users, path: "u"
  resources :users do
  	resources :shoes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shoes#index'
end

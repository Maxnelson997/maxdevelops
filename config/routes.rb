Rails.application.routes.draw do
  resources :widgets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    resources :widgets
  end


  get "angularapp",       controller: "angularapp", action: "index"
  get "angularapp/*path", controller: "angularapp", action: "index"
end

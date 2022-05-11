Rails.application.routes.draw do
  
 resources :tasks, only:[:index, :create, :destroy, :new, :edit]
 get "/login", to: "sessions#new"
 post "/login", to: "sessions#create"
 delete "/logout", to: "sessions#destroy"
end

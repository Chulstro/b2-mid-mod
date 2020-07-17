Rails.application.routes.draw do

  get "/mechanics", to: 'mechanics#index'
  
  get '/parks/:id', to: 'amusement_parks#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

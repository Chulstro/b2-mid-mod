Rails.application.routes.draw do

  get "/mechanics", to: 'mechanics#index'
  get '/mechanics/:id', to: 'mechanics#show'
  patch '/mechanics/:id', to: 'mechanics#update'

  get '/parks/:id', to: 'amusement_parks#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'plants/create'
  get 'plants/index'
  get 'plants/show'
  get '/plants', to: 'plants#index'
  get '/plants/:id', to: 'plants#show'
  post '/plants', to: 'plants#create'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

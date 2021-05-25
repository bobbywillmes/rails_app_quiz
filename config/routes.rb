Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/jobs', to: 'jobs#index'
  get '/jobs/:id', to: 'jobs#findById'
  post '/jobs', to: 'jobs#create'
  delete '/jobs/:id', to: 'jobs#delete'

end

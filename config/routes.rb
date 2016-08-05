Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'contacts#index'
  get '/contacts/', to: 'contacts#index'
  get '/all_johns', to: 'contacts#all_johns'
  get '/new', to: 'contacts#new'

  get '/contacts/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/contacts/:id', to: 'contacts#show'
  get '/contacts/:id/edit', to: 'contacts#edit'
  patch '/contacts/:id', to: 'contacts#update'

  get 'signup', to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:id', to: 'users#show', as: 'user'
end

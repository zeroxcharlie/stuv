Rails.application.routes.draw do
  resources :viajes
  root 'stuv#index'

  get        '/perfil', to: 'users#show', as: :perfil
  get        '/signup', to: 'users#new', as: :new_user
  get '/editar_perfil', to: 'users#edit', as: :edit_user
  get         '/login', to: 'sessions#new'
  post        '/login', to: 'sessions#create'
  delete     '/logout', to: 'sessions#destroy'

  resources :users, except: [:show, :new, :edit]
  resources :vehicles
end

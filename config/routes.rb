Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/users', to: redirect('/')

  resources :posts, only: [:index, :new, :create]

  root 'posts#index'
end

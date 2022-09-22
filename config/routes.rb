
Rails.application.routes.draw do
  resources :patients
  resources :rooms
  resources :time_slots
  resources :practices
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/member-data', to: 'members#show'
<<<<<<< HEAD
  
  resources :contacts
  
=======
  delete '/members/:id' => 'members#destroy', :as => :admin_destroy_user
>>>>>>> e8cd763915ae8738f0a6fd9aceffef0ac713c54c
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
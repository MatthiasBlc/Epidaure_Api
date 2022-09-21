
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
  delete '/members/:id' => 'members#destroy', :as => :admin_destroy_user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
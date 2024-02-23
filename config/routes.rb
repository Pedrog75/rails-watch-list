Rails.application.routes.draw do
  # get 'bookmark/create'
  # get 'bookmark/new'
  # get 'lists/index'
  # get 'lists/create'
  # get 'lists/new'
  # get 'lists/edit'
  # get 'lists/show'
  # get 'lists/update'
  # get 'lists/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :lists do
    resources :bookmarks, only: [:create, :new]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  end
  resources :bookmarks, only: [:destroy]
  get "up" => "rails/health#show", as: :rails_health_check



end

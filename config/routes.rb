Rails.application.routes.draw do
  get 'regions/index'
  resources :students
  resources :courses
  resources :states
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

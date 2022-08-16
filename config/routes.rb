Rails.application.routes.draw do
  resources :students
  resources :tutorial_module_courses
  resources :courses
  resources :module_plans
  resources :tutors
  resources :states
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

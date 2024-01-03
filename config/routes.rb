Rails.application.routes.draw do
  get 'todos/new'
  get 'todos/create'
  get 'todos/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'todos#index'
  # root "articles#index"
end

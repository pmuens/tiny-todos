TinyTodos::Application.routes.draw do
  resources :todos do
    resources :comments
  end
  
  root :to => 'todos#index'
end
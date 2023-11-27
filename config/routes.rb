Rails.application.routes.draw do
  resources :categories do
    resources :tasks
  end
  resources :categories
  resources :tasks
  root 'tasks#index'
end

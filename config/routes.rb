Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  namespace :project do
    resources :tasks
  end
  devise_for :users
  root to: "projects#index"
end

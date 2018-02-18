Rails.application.routes.draw do
  get 'welcome/index'

  resources :entries do
    resources :comments
  end

  root 'welcome#index'
end

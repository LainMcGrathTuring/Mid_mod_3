Rails.application.routes.draw do
  root 'welcome#index'
  get '/search', to: 'search#index'

  namespace :v1 do
    resources :characters, only: :index
  end
end

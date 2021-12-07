Rails.application.routes.draw do
  get '/', to: 'application#index'

  resources :articles
end

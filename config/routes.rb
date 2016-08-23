Rails.application.routes.draw do

  devise_for :users

  root to: 'polls#index'

  resources :polls

end

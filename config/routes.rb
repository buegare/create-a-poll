Rails.application.routes.draw do

  get 'questions/update'

  devise_for :users

  root to: 'polls#index'

  resources :polls

end

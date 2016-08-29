Rails.application.routes.draw do

  get 'questions/update'

  devise_for :users

  authenticated :user do
    root "polls#index", as: "authenticated_root"
  end
 
  root to: 'polls#new'

  resources :polls

end

Rails.application.routes.draw do
  get 'poll_questions/new'

  get 'polls/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'polls#index'

  resources :polls
  resources :poll_questions
end

Rails.application.routes.draw do
  resources :advice_replies
  resources :advice_questions
  resources :topics
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  get 'pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end

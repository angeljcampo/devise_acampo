Rails.application.routes.draw do
  get 'stories/story_user' 
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

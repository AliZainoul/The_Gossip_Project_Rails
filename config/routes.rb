Rails.application.routes.draw do
  root 'pages#all_gossips'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:first_name', to: 'pages#welcome_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

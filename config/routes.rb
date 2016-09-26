Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :projects

  get '/pages/calc_js' => 'pages#calc_js'
  
  root to: 'pages#home'

end

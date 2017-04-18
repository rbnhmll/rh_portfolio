Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :projects

	post '/emails/send', to: 'emails#send', as: 'email'
  
  root to: 'pages#home'

end

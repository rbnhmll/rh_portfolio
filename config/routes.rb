Rails.application.routes.draw do

  get 'workshops/vue_workshop'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :projects

	post '/emails/send', to: 'emails#send', as: 'email'
  
  root to: 'pages#home'

  get ':action', :controller => :home

end

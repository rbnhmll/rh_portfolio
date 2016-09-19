Rails.application.routes.draw do

  devise_for :users

# Use this to remove the user sign_up action
	# devise_for :users, path_names: {
	#   sign_up: ''
	# }

  resources :projects

  get '/pages/calc_js' => 'pages#calc_js'
  
  root to: 'pages#home'

end

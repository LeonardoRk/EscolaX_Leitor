Rails.application.routes.draw do 
	resources :alumns
	resources :parents

	root 'reader#index'

	get '/reader' , to:'reader#index'

end

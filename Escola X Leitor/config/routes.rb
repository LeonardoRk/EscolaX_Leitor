Rails.application.routes.draw do
	resources :alumns, controller: 'reader'
	resources :parents

	get 'reader/index'
	root 'reader#index'

end

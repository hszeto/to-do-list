Rails.application.routes.draw do

	root 'home#index', as: :home   

	get 'lists/' => 'lists#index', as: :lists

	#new route added in
	get 'lists/' => 'lists#index', as: :list

	post 'lists/' => 'lists#create', as: :lists_create

end

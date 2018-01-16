Rails.application.routes.draw do
	#routes.rb
	devise_for :users, :path_prefix => 'd'
	resources :users


	resources :projects
	resources :posts
	resources :devtools

	root 'projects#index'
	
	# get '*path' => redirect('/')
end


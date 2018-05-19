Rails.application.routes.draw do
  resources :documentations
	#routes.rb
	devise_for :users, :path_prefix => 'd'
	resources :users


	resources :projects do
	  member do
	      get :addfriend
	  end
	end
	resources :posts
	resources :devtools

	root 'projects#index'
	
	# get '*path' => redirect('/')
end


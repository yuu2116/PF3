Rails.application.routes.draw do
	devise_for :users
	devise_scope :user do
		get '/users/sign_out' => 'devise/sessions#destroy'
	end
	resources :shops do
		resource :favorites, only: [:create, :destroy]
		resources :shop_comments, only: [:create, :destroy]
	end
	resources :users do
		resource :relationships, only: [:create, :destroy]
		member do
			get :following, :followers
		end
	end

	root 'homes#top'
	get 'home/about' => 'homes#about'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

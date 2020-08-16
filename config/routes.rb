Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  post 'shops/new'
  get 'shops/index'
  get 'shops/edit'
  get 'shops/update'
  get 'shops/create'
  get 'shops/destroy'
  resources :users
root 'homes#top'
get 'home/about' => 'homes#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

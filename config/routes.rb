Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root to: "projects#index"
  resources :projects do
  	resources :tasks
  end
  resources :comments
  resources :attachfiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

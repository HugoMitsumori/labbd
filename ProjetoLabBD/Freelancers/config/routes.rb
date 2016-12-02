Rails.application.routes.draw do
  resources :solutions
  resources :services
  resources :contractors
  resources :migrations
  resources :remove_company_from_contractors
  resources :tests
  resources :add_company_id_to_contractors
  resources :add_compan_to_contractors
  resources :add_company_to_contractors
  resources :add_asd_to_freelancer_knowledges
  resources :add_foreign_key_to_freelancer_knowledges
  resources :certificates
  resources :proposals
  resources :users
  resources :followers
  resources :issues
  resources :freelancers
  resources :companies
  resources :knowledges
  resources :required_knowledges
  resources :freelancer_knowledges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end

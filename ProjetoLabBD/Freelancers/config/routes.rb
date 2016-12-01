Rails.application.routes.draw do
  resources :add_asd_to_freelancer_knowledges
  resources :add_foreign_key_to_freelancer_knowledges
  resources :certificates
  resources :proposals
  resources :users
  resources :solutions
  resources :services
  resources :followers
  resources :issues
  resources :freelancers
  resources :companies
  resources :contractors
  resources :knowledges
  resources :required_knowledges
  resources :freelancer_knowledges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

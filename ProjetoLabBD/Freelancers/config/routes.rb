Rails.application.routes.draw do
  resources :solutions
  resources :services
  resources :contractors
  resources :tests
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
  post 'user/follow' => 'users#follow'
  delete 'user/unfollow' => 'users#unfollow'
  get 'service/graph' => 'services#graph'
  get 'user/individual' => 'users#individual'
  get 'acceptSolution' => 'solutions#accept'
end

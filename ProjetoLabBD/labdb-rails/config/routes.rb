Rails.application.routes.draw do
  resources :required_knowledges
  resources :freelancer_knowledges
  resources :conhecimento_requisitados
  resources :servicos
  resources :conhecimento_freelancers
  resources :conhecimentos
  resources :contratantes
  resources :empresas
  resources :freelancers
  resources :solucaos
  resources :problemas
  resources :seguidors
  resources :usuarios
  root :to => "home#index"
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

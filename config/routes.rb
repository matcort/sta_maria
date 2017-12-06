Rails.application.routes.draw do
  root "sessions#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :facturas
  resources :contratos
  resources :administradors
  resources :arrendatarios
  resources :mes_garantia
  resources :gastos
  resources :locals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

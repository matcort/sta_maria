Rails.application.routes.draw do
  root "sessions#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :facturas
  resources :administradors
  resources :arrendatarios
  resources :mes_garantia
  resources :gastos
  resources :locals do
    resources :contratos
  end
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

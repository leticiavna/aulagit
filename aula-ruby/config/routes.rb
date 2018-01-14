Rails.application.routes.draw do

  get "contato", to: 'contacts#index', as: :contact
  post "contato", to: "contacts#create"

  get 'juntese', to: 'applicants#index', as: :join
  post "juntese", to: 'applicants#create'

  get 'produtos/novo_produto', to: "items#new", as: :new_item
  get 'produtos', to: "items#index", as: :items
  post "produtos", to: "items#create"
  delete 'produtos/:id', to: "items#destroy", as: :destroy_item

  get 'lojas/nova_loja', to: "stores#new", as: :new_store
  get 'lojas', to: "stores#index", as: :stores
  post 'lojas', to: "stores#create"
  delete 'lojas/:id', to: "stores#destroy", as: :destroy_store  #:diferenciando parametro do nome da loja
  
  root to: "static_pages#index"

  get 'home', to: "static_pages#index", as: :home
  get 'sobre', to: "static_pages#about", as: :about

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

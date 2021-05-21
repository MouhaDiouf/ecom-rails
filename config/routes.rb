Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "pages#home"
get 'admin', to: 'pages#admin'
resources :produits
get 'produits/créer', to: 'produit#new'
post '/produit/:id/confirmer', to: 'produit#confirm'

devise_scope :user do
  get 'connexion', to: 'devise/sessions#new'
  get 'inscription', to: 'devise/registrations#new'
end

end

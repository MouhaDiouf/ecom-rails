Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "home#index"

get 'produits/créer', to: 'produits#new'
devise_scope :user do
  get 'connexion', to: 'devise/sessions#new'
  get 'inscription', to: 'devise/registrations#new'

end

end

class ProduitsController < ApplicationController
def users_only
  if !current_user
    redirect_to new_user_session_path, notice: "Vous devez d'abord vous connecter"
  end
end

 before_action :users_only, only:[:create, :update, :new]
def new
  @produit = Produit.new
end

def index
@produits = Produit.all
end

def show
  @produit = Produit.find(params[:id])
  @similaires = Produit.similaires(@produit)

end

def create
@produit = Produit.new(produit_params)
@produit.user_id = current_user.id
if(!@produit.save)
  render 'new'

else
   redirect_to root_path, notice: 'Produit créé  avec succès'

end

end
private

def produit_params
params.require(:produit).permit(:nom, :description, :catégorie, :prix, images: [])
end

end

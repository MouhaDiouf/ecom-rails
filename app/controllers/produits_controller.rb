class ProduitsController < ApplicationController
def new
  @produit = Produit.new
end

def index
@produits = Produit.all
end

def create
@produit = Produit.new(produit_params)
@produit.user_id = 1
if(@produit.save)
  redirect_to root_path, notice: 'Produit créé  avec succès'
else
   render 'new'
end
end
private

def produit_params
params.require(:produit).permit(:nom, :description, images: [])
end

end

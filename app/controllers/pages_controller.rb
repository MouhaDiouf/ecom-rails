class PagesController < ApplicationController
def check_admin
  if(!current_user)
    redirect_to root_path
  elsif(current_user && !current_user.admin?)
    redirect_to root_path
  end
  before_action :check_admin, only: [:admin]
end

  def admin
    @produits = Produit.where('confirm is FALSE')
  end

  def home
    @produits = Produit.all
  end
end

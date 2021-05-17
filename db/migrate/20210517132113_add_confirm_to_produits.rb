class AddConfirmToProduits < ActiveRecord::Migration[6.1]
  def change
    add_column :produits, :confirm, :boolean, default: false
  end
end

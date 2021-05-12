class AddPrixToProduit < ActiveRecord::Migration[6.1]
  def change
    add_column :produits, :prix, :decimal
  end
end

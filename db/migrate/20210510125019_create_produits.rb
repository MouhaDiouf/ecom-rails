class CreateProduits < ActiveRecord::Migration[6.1]
  def change
    create_table :produits do |t|
      t.string :nom
      t.string :description
      t.string :catégorie
      t.integer :user_id
      t.timestamps
    end
  end
end

class UpdatePriceType < ActiveRecord::Migration[6.1]
  def change
    change_table :produits do |t|
    t.change :prix, :integer
    end
  end 
end

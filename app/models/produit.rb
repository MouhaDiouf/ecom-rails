class Produit < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  validate :acceptable_image
  validates :nom, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :catégorie, presence: true
  validates :images, presence: true


  def acceptable_image
    return unless images.attached?
  end


  def self.similaires(produit)
  where("nom LIKE ?", "#{produit.nom}%").limit(4)
end

end

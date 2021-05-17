class Produit < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  validate :acceptable_image
  validates :nom, presence: true
  validates :description, presence: true
  validates :prix, presence: true
  validates :catégorie, presence: true
  validates :images, presence: true


  scope :confirmé, -> { where("confirm IS false") }
  default_scope { order('created_at DESC') }
  # default_scope {}

  def acceptable_image
    return unless images.attached?
  end

  def self.similaires(produit)
    where("nom LIKE ?", "#{produit.nom}%").limit(4)
  end

def self.search(search)
  if(search)
    where('nom LIKE ?', "%#{search}%")
  else
    Produit.all
  end

  end

end

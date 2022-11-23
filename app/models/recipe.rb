class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :recipe_image, presence: true
  

  belongs_to :category

  has_many :recipes_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipes_ingredients

  has_one_attached :recipe_image
end

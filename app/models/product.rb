class Product < ApplicationRecord
  has_many :favorite, dependent: :destroy
  belongs_to :category
  validates :name, :description, :price, presence: true
  has_one_attached :file
end

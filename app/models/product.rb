class Product < ApplicationRecord

  has_many :photos, dependent: :destroy
  has_many :line_items
  belongs_to :category

  validates :price, presence: true
  validates :name, presence: true
end

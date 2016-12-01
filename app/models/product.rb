class Product < ApplicationRecord

  has_many :photos, dependent: :destroy
  has_many :line_items
  belongs_to :category

  validates :price, presence: true
  validates :name, presence: true


  def self.order_by_name
    order(:name)
  end

  def self.order_by_price
    order(:price)
  end

  def self.order_by_created_at
    order(:created_at)
  end
end

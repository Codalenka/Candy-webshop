class LineItem < ApplicationRecord
  belongs_to :product
  belongs to :order

  validates :quantity, presence: true
end

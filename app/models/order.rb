class Order < ApplicationRecord
  belongs_to :user
  has_many :ordered_items
  has_many :cart_items, through: :ordered_items
  has_many: carts
  validates :total_price, presence: true
end

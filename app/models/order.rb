class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  has_many :order_items
  validates :total_price, presence: true
end

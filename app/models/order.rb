class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  belongs_to :cart
  validates :total_price, presence: true
  validates :user_id, presence: true
end

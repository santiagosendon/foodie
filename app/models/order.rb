class Order < ApplicationRecord
  has_many :reviews
  has_many :order_items
  has_many :menu_items, through: :order_items
  belongs_to :user


#   def restaurant
#
#   # has_many :order_item through
end

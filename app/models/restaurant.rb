class Restaurant < ApplicationRecord
has_many :menu_items
has_many :order_items, through: :menu_items

end

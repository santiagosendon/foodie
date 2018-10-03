class Restaurant < ApplicationRecord
has_many :menu_items
has_many :reviews
has_many :users, through: :reviews



end

class Product < ApplicationRecord
validates :name, :price, :category, :size, presence: true
has_many :order_items
end

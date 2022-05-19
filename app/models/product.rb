class Product < ApplicationRecord
validates :name, :price, :category, :size, presence: true
end

class OrderItem < ApplicationRecord
  belongs_to :OrderList
  belongs_to :product
end

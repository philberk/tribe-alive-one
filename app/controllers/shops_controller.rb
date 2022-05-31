class ShopsController < ApplicationController
  def index
    @products = Product.all
    @order_items = current_order.order_items
  end

  def show
    @product = Product.find(params[:id])
  end

end

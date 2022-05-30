class ShopsController < ApplicationController
  def index
    @products = Product.all

    @order_items = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

end

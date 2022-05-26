class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @products = Product.all
  end

  def search
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.update("search_results", params[:name_search])
      end
    end
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end

  def edit; end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :size, :category, :price)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end

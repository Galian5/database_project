class ProductsController < ApplicationController
  def create
    @product = Product.new(params[:product])

    @product.save
  end

  def edit
    @product = Product.find(params[:id])

    @product.update(product_params)
  end

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :quantity_per_unit,
                                    :unit_price, :units_in_stock, :units_on_order,
                                    :reorder_level, :discontinued)
  end
end

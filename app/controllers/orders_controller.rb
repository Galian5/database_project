class OrdersController < ApplicationController
  def create
    @order = Order.new(params[:order])

    @order.save
  end

  def edit
    @order = Order.find(params[:id])

    @order.update(order_params)
  end

  def show
    @order = Order.find(params[:id])
  end

  def index
    @orders = Order.all
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:order_date, :required_date, :shipped_date, :freight, :ship_name,
                                  :ship_address, :ship_city, :ship_region, :ship_postalcode, :ship_country)
  end
end

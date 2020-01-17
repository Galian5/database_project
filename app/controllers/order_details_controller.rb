class OrderDetailsController < ApplicationController
  def create
    @order_detail = OrderDetail.new(params[:order_details])

    @order_detail.save
  end

  def edit
    @order_detail = OrderDetail.find(params[:id])

    @order_detail.update(order_params)
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
  end

  def index
    @order_details = OrderDetail.all
  end

  def destroy
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.destroy
  end

  private

  def order_details_params
    params.require(:order_details).permit(:unit_price, :quantity, :discount)
  end
end

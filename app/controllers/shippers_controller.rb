class ShippersController < ApplicationController
  def create
    @shipper = Shipper.new(params[:shipper])

    @shipper.save
  end

  def edit
    @shipper = Shipper.find(params[:id])

    @shipper.update(shipper_params)
  end

  def show
    @shipper = Shipper.find(params[:id])
  end

  def index
    @shippers = Shipper.all
  end

  def destroy
    @shipper = Shipper.find(params[:id])
    @shipper.destroy
  end

  private

  def shipper_params
    params.require(:shipper).permit(:company_name, :phone)
  end
end

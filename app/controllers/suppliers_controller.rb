class SuppliersController < ApplicationController
  def create
    @supplier = Supplier.new(params[:supplier])

    @supplier.save
  end

  def edit
    @supplier = Supplier.find(params[:id])

    @supplier.update(supplier_params)
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def index
    @suppliers = Supplier.all
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
  end

  private

  def supplier_params
    params.require(:supplier).permit(:company_name, :contact_name, :address, :city, :region,
                                     :postal_code, :country, :phone, :fax, :homepage)
  end
end

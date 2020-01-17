class CustomersController < ApplicationController
  def create
    @customer = Customer.new(params[:customer])

    @customer.save
  end

  def edit
    @customer = Customer.find(params[:id])

    @customer.update(customer_params)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    @customers = Customer.all
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
  end

  private

  def customer_params
    params.require(:customer).permit(:company_name, :contact_name, :contact_title, :address,
                                     :city, :region, :postal_code, :country, :phone, :fax)

  end
end

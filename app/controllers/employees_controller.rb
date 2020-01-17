class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(params[:employee])

    @employee.save
  end

  def edit
    @employee = Employee.find(params[:id])

    @employee.update(employee_params)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end

  private

  def employee_params
    params.require(:employee).permit(:last_name, :first_name, :title, :title_of_courtesy,
                                     :birthdate, :hiredate, :address, :city, :region,
                                     :postal_code, :country, :homephone, :extension,
                                     :notes, :reports_to, :photo_path)
  end
end

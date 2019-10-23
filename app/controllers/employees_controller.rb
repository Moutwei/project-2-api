# frozen_string_literal: true

class EmployeesController < ProtectedController
  before_action :set_employee, only: %i[show update destroy]

  # GET /employees
  def index
    @employees = current_user.employees

    render json: @employees
  end

  # GET /employees/1
  def show
    @employee = current_user.employees.find(params[:id])
    render json: @employee
  end

  # POST /employees
  def create
    @employee = current_user.employees.build(employee_params)

    if @employee.save
      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  def update
    @employee = current_user.employees.find(params[:id])
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employees/1
  def destroy
    @employee = current_user.employees.find(params[:id])
    @employee.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = current_user.employees.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def employee_params
    params.require(:employee).permit(:name, :task, :task_status, :user_id, :project_id)
  end
end

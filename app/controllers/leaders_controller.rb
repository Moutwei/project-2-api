# frozen_string_literal: true

class LeadersController < ProtectedController
  before_action :set_leader, only: %i[show update destroy]

  # GET /leaders
  def index
    @leaders = current_user.leaders

    render json: @leaders
  end

  # GET /leaders/1
  def show
    @leader = current_user.leaders.find(params[:id])
    render json: @leader
  end

  # POST /leaders
  def create
    @leader = current_user.leaders.build(leader_params)

    if @leader.save
      render json: @leader, status: :created, location: @leader
    else
      render json: @leader.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leaders/1
  def update
    @leader = current_user.leaders.find(params[:id])
    if @leader.update(leader_params)
      render json: @leader
    else
      render json: @leader.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leaders/1
  def destroy
    @leader = current_user.leaders.find(params[:id])
    @leader.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_leader
    @leader = current_user.leaders.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def leader_params
    params.require(:leader).permit(:name, :email, :phone, :skills, :completed_projects)
  end
end

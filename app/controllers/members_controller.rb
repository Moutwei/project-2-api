# frozen_string_literal: true

class MembersController < ProtectedController
  before_action :set_member, only: %i[show update destroy]

  # GET /members
  def index
    @members = current_user.members

    render json: @members
  end

  # GET /members/1
  def show
    @member = current_user.members.find(params[:id])
    render json: @member
  end

  # POST /members
  def create
    @member = current_user.members.build(params[:id])

    if @member.save
      render json: @member, status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1
  def update
    @member = current_user.members.find(params[:id])
    if @member.update(member_params)
      render json: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1
  def destroy
    @member = current_user.members.find(params[:id])
    @member.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = current_user.members.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def member_params
    params.require(:member).permit(:name, :task, :task_status)
  end
end

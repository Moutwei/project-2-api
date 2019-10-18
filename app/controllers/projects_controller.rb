# frozen_string_literal: true

class ProjectsController < ProtectedController
  before_action :set_project, only: %i[show update destroy]

  # GET /projects
  def index
    @projects = current_user.projects

    render json: @projects
  end

  # GET /projects/1
  def show
    @project = current_user.projects.find(params[:id])
    render json: @project
  end

  # POST /projects
  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    @project = current_user.projects.find(params[:id])
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project = current_user.projects.find(params[:id])
    @project.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = current_user.projects.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def project_params
    params.require(:project).permit(:title, :mission, :target, :requirements, :status, :leader_id)
  end
end

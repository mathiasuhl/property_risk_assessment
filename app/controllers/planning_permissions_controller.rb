class PlanningPermissionsController < ApplicationController
  before_action :set_planning_permission, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @planning_permissions = PlanningPermission.all
    respond_with(@planning_permissions)
  end

  def show
    respond_with(@planning_permission)
  end

  def new
    @planning_permission = PlanningPermission.new
    respond_with(@planning_permission)
  end

  def edit
  end

  def create
    @planning_permission = PlanningPermission.new(planning_permission_params)
    @planning_permission.save
    respond_with(@planning_permission)
  end

  def update
    @planning_permission.update(planning_permission_params)
    respond_with(@planning_permission)
  end

  def destroy
    @planning_permission.destroy
    respond_with(@planning_permission)
  end

  private
    def set_planning_permission
      @planning_permission = PlanningPermission.find(params[:id])
    end

    def planning_permission_params
      params.require(:planning_permission).permit(:name)
    end
end

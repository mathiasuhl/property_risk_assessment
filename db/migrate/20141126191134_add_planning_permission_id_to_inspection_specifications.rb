class AddPlanningPermissionIdToInspectionSpecifications < ActiveRecord::Migration
  def change
    add_column :inspection_specifications, :planning_permission_id, :integer
  end
end

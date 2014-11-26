class CreatePlanningPermissions < ActiveRecord::Migration
  def change
    create_table :planning_permissions do |t|
      t.string :name

      t.timestamps
    end
  end
end

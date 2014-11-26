class AddDescriptionToInspectionSpecifications < ActiveRecord::Migration
  def change
    add_column :inspection_specifications, :description, :text
  end
end

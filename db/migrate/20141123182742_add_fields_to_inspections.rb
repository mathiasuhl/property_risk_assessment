class AddFieldsToInspections < ActiveRecord::Migration
  def change
    add_column :inspections, :notes, :text
    add_column :inspections, :level, :string
    add_column :inspections, :status, :string
    add_column :inspections, :proof_of_status, :string
    add_column :inspections, :proof_of_order, :string
  end
end

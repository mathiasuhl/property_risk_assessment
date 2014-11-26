# -*- encoding : utf-8 -*-
class CreateInspectionSpecifications < ActiveRecord::Migration
  def change
    create_table :inspection_specifications do |t|
      t.string :comment_to_facility
      t.string :specification
      t.string :basis_of_check
      t.integer :intervall_in_years
      t.string :intervall_information
      t.string :kind_of_check
      t.string :first_check
      t.string :first_check_information
      t.string :comment

      t.references :facility, index: true
      t.references :facility_category, index: true
      t.references :location, index: true

      t.timestamps
    end
  end
end

# -*- encoding : utf-8 -*-
class CreateInspectionSpecifications < ActiveRecord::Migration
  def change
    create_table :inspection_specifications do |t|
      t.string :name
      t.string :basis
      t.string :inspector
      t.integer :intervall_in_years
      t.boolean :is_first_check_necessary
      t.string :inspector_first_check
      t.references :facility, index: true
      t.references :inspection, index: true
      t.references :location, index: true

      t.timestamps
    end
  end
end

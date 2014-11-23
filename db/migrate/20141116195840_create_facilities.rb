# -*- encoding : utf-8 -*-
class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :specification
      t.text :notes
      t.references :property, index: true
      t.string :base_of_check
      t.references :facility_category, index: true
      t.references :insurance_facility, index: true
      t.integer :amount
      t.string :number

      t.timestamps
    end
  end
end

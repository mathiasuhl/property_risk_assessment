# -*- encoding : utf-8 -*-
class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :specification
      t.text :description
      t.string :comment
      t.references :facility_category, index: true

      t.timestamps
    end
  end
end

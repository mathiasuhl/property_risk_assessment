# -*- encoding : utf-8 -*-
class AddExtraFieldsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :has_soil_expertise, :boolean
    add_column :properties, :has_electric_meter_per_rentable_areas, :boolean
    add_column :properties, :has_plan_landregister, :boolean
    add_column :properties, :has_soil_pollution, :boolean
    add_column :properties, :has_keyregister, :boolean
    add_column :properties, :has_construction_specification, :boolean
  end
end

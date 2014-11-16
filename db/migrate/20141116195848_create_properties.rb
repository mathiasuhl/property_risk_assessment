class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :city
      t.string :name
      t.string :zip
      t.date :year_of_construction
      t.string :owner
      t.text :company
      t.string :asset_management
      t.string :property_management
      t.string :service_provider
      t.boolean :has_garage
      t.string :calc_of_rentable_area
      t.string :plans
      t.string :lightning_protection_level
      t.boolean :has_land_register_record
      t.boolean :has_spezification
      t.string :planning_permission
      t.boolean :has_energy_pass
      t.boolean :has_fire_protection_plan
      t.references :tanant, index: true
      t.references :insurance, index: true

      t.timestamps
    end
  end
end

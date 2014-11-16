class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :has_cracks
      t.boolean :has_maintanance_sticker
      t.boolean :has_damp_areas
      t.boolean :has_fire_extinguisher
      t.boolean :has_maintanance_and_inspection_manuel
      t.boolean :has_fire_wall
      t.boolean :has_free_evacuation_route
      t.boolean :has_closeable_fire_doors
      t.references :property, index: true

      t.timestamps
    end
  end
end

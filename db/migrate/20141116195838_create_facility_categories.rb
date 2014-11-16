class CreateFacilityCategories < ActiveRecord::Migration
  def change
    create_table :facility_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end

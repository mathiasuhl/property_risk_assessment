class CreatePropertyHasFacilities < ActiveRecord::Migration
  def change
    create_table :property_has_facilities do |t|
      t.string :number
      t.boolean :has_revision_documents
      t.boolean :has_service_contract
      t.boolean :has_grap_packs
      t.boolean :has_service_stickers
      t.boolean :elevator_emergencey_call_is_working
      t.boolean :elevator_intercom_is_working
      t.references :property, index: true
      t.references :facility, index: true
      t.references :insurance_facility, index: true

      t.timestamps
    end
  end
end

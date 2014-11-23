class CreateSurveyFacilities < ActiveRecord::Migration
  def change
    create_table :survey_facilities do |t|
      t.integer :survey_id
      t.integer :facility_id
      t.boolean :has_grap_packs
      t.boolean :has_service_stickers
      t.boolean :elevator_emergencey_call_is_working
      t.boolean :elevator_intercom_is_working

      t.timestamps
    end
  end
end

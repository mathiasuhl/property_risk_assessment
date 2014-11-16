class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :name
      t.text :notes
      t.references :insurance_facility, index: true

      t.timestamps
    end
  end
end

class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.date :date
      t.string :inspector
      t.string :eq_number
      t.string :protocol_number
      t.references :facility, index: true
      t.string :protocol_file
      t.string :inspector_company

      t.timestamps
    end
  end
end

class CreateDefects < ActiveRecord::Migration
  def change
    create_table :defects do |t|
      t.string :level
      t.text :notes
      t.references :inspection, index: true
      t.string :status
      t.string :proof_of_status
      t.string :proof_of_order
      t.boolean :has_confirmed_order
      t.references :service, index: true

      t.timestamps
    end
  end
end

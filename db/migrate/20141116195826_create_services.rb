class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.boolean :is_complete
      t.string :protocol
      t.string :proof

      t.timestamps
    end
  end
end

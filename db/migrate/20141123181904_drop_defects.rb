class DropDefects < ActiveRecord::Migration

  def up
    drop_table :defects
  end

  def down
    create_table "defects", force: true do |t|
      t.string   "level"
      t.text     "notes"
      t.integer  "inspection_id"
      t.string   "status"
      t.string   "proof_of_status"
      t.string   "proof_of_order"
      t.boolean  "has_confirmed_order"
      t.integer  "service_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end

end

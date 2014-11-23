# -*- encoding : utf-8 -*-
class CreateTanants < ActiveRecord::Migration
  def change
    create_table :tanants do |t|
      t.string :company
      t.string :location
      t.string :address
      t.text :notes

      t.timestamps
    end
  end
end

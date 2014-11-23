# -*- encoding : utf-8 -*-
class CreateInsuranceFacilities < ActiveRecord::Migration
  def change
    create_table :insurance_facilities do |t|
      t.integer :intervall

      t.timestamps
    end
  end
end

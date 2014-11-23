class AddFieldsToFacilities < ActiveRecord::Migration
  def change
    add_column :facilities, :has_revision_documents, :boolean
    add_column :facilities, :has_service_contract, :boolean
  end
end

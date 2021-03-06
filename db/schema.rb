# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141126195705) do

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.string   "specification"
    t.text     "notes"
    t.integer  "property_id"
    t.string   "base_of_check"
    t.integer  "facility_category_id"
    t.integer  "insurance_facility_id"
    t.integer  "amount"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_revision_documents"
    t.boolean  "has_service_contract"
  end

  add_index "facilities", ["facility_category_id"], name: "index_facilities_on_facility_category_id", using: :btree
  add_index "facilities", ["insurance_facility_id"], name: "index_facilities_on_insurance_facility_id", using: :btree
  add_index "facilities", ["property_id"], name: "index_facilities_on_property_id", using: :btree

  create_table "facility_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inspection_specifications", force: true do |t|
    t.string   "name"
    t.string   "basis"
    t.string   "inspector"
    t.integer  "intervall_in_years"
    t.boolean  "is_first_check_necessary"
    t.string   "inspector_first_check"
    t.integer  "facility_category_id"
    t.integer  "inspection_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "planning_permission_id"
    t.text     "description"
  end

  add_index "inspection_specifications", ["facility_category_id"], name: "index_inspection_specifications_on_facility_id", using: :btree
  add_index "inspection_specifications", ["inspection_id"], name: "index_inspection_specifications_on_inspection_id", using: :btree
  add_index "inspection_specifications", ["location_id"], name: "index_inspection_specifications_on_location_id", using: :btree

  create_table "inspections", force: true do |t|
    t.date     "date"
    t.string   "inspector"
    t.string   "eq_number"
    t.string   "protocol_number"
    t.integer  "facility_id"
    t.string   "protocol_file"
    t.string   "inspector_company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
    t.string   "level"
    t.string   "status"
    t.string   "proof_of_status"
    t.string   "proof_of_order"
  end

  add_index "inspections", ["facility_id"], name: "index_inspections_on_facility_id", using: :btree

  create_table "insurance_facilities", force: true do |t|
    t.integer  "intervall"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurances", force: true do |t|
    t.string   "name"
    t.text     "notes"
    t.integer  "insurance_facility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insurances", ["insurance_facility_id"], name: "index_insurances_on_insurance_facility_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["property_id"], name: "index_locations_on_property_id", using: :btree

  create_table "planning_permissions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "name"
    t.string   "zip"
    t.date     "year_of_construction"
    t.string   "owner"
    t.text     "company"
    t.string   "asset_management"
    t.string   "property_management"
    t.string   "service_provider"
    t.boolean  "has_garage"
    t.string   "calc_of_rentable_area"
    t.string   "plans"
    t.string   "lightning_protection_level"
    t.boolean  "has_land_register_record"
    t.boolean  "has_spezification"
    t.integer  "planning_permission_id"
    t.boolean  "has_energy_pass"
    t.boolean  "has_fire_protection_plan"
    t.integer  "tanant_id"
    t.integer  "insurance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_soil_expertise"
    t.boolean  "has_electric_meter_per_rentable_areas"
    t.boolean  "has_plan_landregister"
    t.boolean  "has_soil_pollution"
    t.boolean  "has_keyregister"
    t.boolean  "has_construction_specification"
  end

  add_index "properties", ["insurance_id"], name: "index_properties_on_insurance_id", using: :btree
  add_index "properties", ["tanant_id"], name: "index_properties_on_tanant_id", using: :btree

  create_table "property_has_facilities", force: true do |t|
    t.string   "number"
    t.boolean  "has_revision_documents"
    t.boolean  "has_service_contract"
    t.boolean  "has_grap_packs"
    t.boolean  "has_service_stickers"
    t.boolean  "elevator_emergencey_call_is_working"
    t.boolean  "elevator_intercom_is_working"
    t.integer  "property_id"
    t.integer  "facility_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "property_has_facilities", ["facility_id"], name: "index_property_has_facilities_on_facility_id", using: :btree
  add_index "property_has_facilities", ["property_id"], name: "index_property_has_facilities_on_property_id", using: :btree

  create_table "services", force: true do |t|
    t.boolean  "is_complete"
    t.string   "protocol"
    t.string   "proof"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_facilities", force: true do |t|
    t.integer  "survey_id"
    t.integer  "facility_id"
    t.boolean  "has_grap_packs"
    t.boolean  "has_service_stickers"
    t.boolean  "elevator_emergencey_call_is_working"
    t.boolean  "elevator_intercom_is_working"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.boolean  "has_cracks_in_garage"
    t.boolean  "has_cracks_in_interior_walls"
    t.boolean  "has_cracks_in_exterior_walls"
    t.boolean  "has_cracks_in_ceilings"
    t.boolean  "has_damp_area_in_garage"
    t.boolean  "has_damp_area_in_interior_walls"
    t.boolean  "has_damp_area_in_exterior_walls"
    t.boolean  "has_damp_area_in_ceilings"
    t.boolean  "has_damp_area_roof_inside"
    t.boolean  "has_damp_area_roof_windows"
    t.boolean  "has_damp_area_windows"
    t.boolean  "has_neat_outdor_facility"
    t.boolean  "has_neat_disposal_area"
    t.boolean  "has_clean_garage"
    t.boolean  "has_neat_roof"
    t.boolean  "has_working_security_lights"
    t.boolean  "has_working_escape_lights"
    t.boolean  "has_working_normal_lights"
    t.boolean  "has_fire_walls"
    t.boolean  "is_the_legal_duty_to_maintain_safety_given"
    t.boolean  "has_free_evacuation_route"
    t.boolean  "is_a_missusage_of_fire_doors_given"
    t.boolean  "has_closeable_fire_doors"
    t.boolean  "are_panic_doors_working"
    t.boolean  "is_cold_water_meter_calibrated"
    t.boolean  "is_warm_water_meter_calibrated"
    t.boolean  "is_heating_meter_calibrated"
    t.boolean  "is_air_condition_meter_calibrated"
    t.boolean  "is_electricity_meter_calibrated"
    t.boolean  "has_fire_extinguisher"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "surveys", ["property_id"], name: "index_surveys_on_property_id", using: :btree

  create_table "tanants", force: true do |t|
    t.string   "company"
    t.string   "location"
    t.string   "address"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

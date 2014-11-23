# -*- encoding : utf-8 -*-
require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address: @property.address, asset_management: @property.asset_management, calc_of_rentable_area: @property.calc_of_rentable_area, city: @property.city, company: @property.company, has_energy_pass: @property.has_energy_pass, has_fire_protection_plan: @property.has_fire_protection_plan, has_garage: @property.has_garage, has_land_register_record: @property.has_land_register_record, has_spezification: @property.has_spezification, insurance_id: @property.insurance_id, lightning_protection_level: @property.lightning_protection_level, name: @property.name, owner: @property.owner, planning_permission: @property.planning_permission, plans: @property.plans, property_management: @property.property_management, service_provider: @property.service_provider, tanant_id: @property.tanant_id, year_of_construction: @property.year_of_construction, zip: @property.zip }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { address: @property.address, asset_management: @property.asset_management, calc_of_rentable_area: @property.calc_of_rentable_area, city: @property.city, company: @property.company, has_energy_pass: @property.has_energy_pass, has_fire_protection_plan: @property.has_fire_protection_plan, has_garage: @property.has_garage, has_land_register_record: @property.has_land_register_record, has_spezification: @property.has_spezification, insurance_id: @property.insurance_id, lightning_protection_level: @property.lightning_protection_level, name: @property.name, owner: @property.owner, planning_permission: @property.planning_permission, plans: @property.plans, property_management: @property.property_management, service_provider: @property.service_provider, tanant_id: @property.tanant_id, year_of_construction: @property.year_of_construction, zip: @property.zip }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end

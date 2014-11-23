# -*- encoding : utf-8 -*-
require 'test_helper'

class FacilitiesControllerTest < ActionController::TestCase
  setup do
    @facility = facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility" do
    assert_difference('Facility.count') do
      post :create, facility: { amount: @facility.amount, base_of_check: @facility.base_of_check, facility_category_id: @facility.facility_category_id, insurance_facility_id: @facility.insurance_facility_id, name: @facility.name, notes: @facility.notes, number: @facility.number, property_id: @facility.property_id, specification: @facility.specification }
    end

    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should show facility" do
    get :show, id: @facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility
    assert_response :success
  end

  test "should update facility" do
    patch :update, id: @facility, facility: { amount: @facility.amount, base_of_check: @facility.base_of_check, facility_category_id: @facility.facility_category_id, insurance_facility_id: @facility.insurance_facility_id, name: @facility.name, notes: @facility.notes, number: @facility.number, property_id: @facility.property_id, specification: @facility.specification }
    assert_redirected_to facility_path(assigns(:facility))
  end

  test "should destroy facility" do
    assert_difference('Facility.count', -1) do
      delete :destroy, id: @facility
    end

    assert_redirected_to facilities_path
  end
end

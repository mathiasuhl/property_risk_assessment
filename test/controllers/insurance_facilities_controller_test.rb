# -*- encoding : utf-8 -*-
require 'test_helper'

class InsuranceFacilitiesControllerTest < ActionController::TestCase
  setup do
    @insurance_facility = insurance_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurance_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurance_facility" do
    assert_difference('InsuranceFacility.count') do
      post :create, insurance_facility: { intervall: @insurance_facility.intervall }
    end

    assert_redirected_to insurance_facility_path(assigns(:insurance_facility))
  end

  test "should show insurance_facility" do
    get :show, id: @insurance_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurance_facility
    assert_response :success
  end

  test "should update insurance_facility" do
    patch :update, id: @insurance_facility, insurance_facility: { intervall: @insurance_facility.intervall }
    assert_redirected_to insurance_facility_path(assigns(:insurance_facility))
  end

  test "should destroy insurance_facility" do
    assert_difference('InsuranceFacility.count', -1) do
      delete :destroy, id: @insurance_facility
    end

    assert_redirected_to insurance_facilities_path
  end
end

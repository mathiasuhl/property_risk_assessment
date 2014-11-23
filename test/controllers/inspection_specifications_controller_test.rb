# -*- encoding : utf-8 -*-
require 'test_helper'

class InspectionSpecificationsControllerTest < ActionController::TestCase
  setup do
    @inspection_specification = inspection_specifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inspection_specifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inspection_specification" do
    assert_difference('InspectionSpecification.count') do
      post :create, inspection_specification: { basis: @inspection_specification.basis, facility_id: @inspection_specification.facility_id, inspection_id: @inspection_specification.inspection_id, inspector: @inspection_specification.inspector, inspector_first_check: @inspection_specification.inspector_first_check, intervall_in_years: @inspection_specification.intervall_in_years, is_first_check_necessary: @inspection_specification.is_first_check_necessary, location_id: @inspection_specification.location_id, name: @inspection_specification.name }
    end

    assert_redirected_to inspection_specification_path(assigns(:inspection_specification))
  end

  test "should show inspection_specification" do
    get :show, id: @inspection_specification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inspection_specification
    assert_response :success
  end

  test "should update inspection_specification" do
    patch :update, id: @inspection_specification, inspection_specification: { basis: @inspection_specification.basis, facility_id: @inspection_specification.facility_id, inspection_id: @inspection_specification.inspection_id, inspector: @inspection_specification.inspector, inspector_first_check: @inspection_specification.inspector_first_check, intervall_in_years: @inspection_specification.intervall_in_years, is_first_check_necessary: @inspection_specification.is_first_check_necessary, location_id: @inspection_specification.location_id, name: @inspection_specification.name }
    assert_redirected_to inspection_specification_path(assigns(:inspection_specification))
  end

  test "should destroy inspection_specification" do
    assert_difference('InspectionSpecification.count', -1) do
      delete :destroy, id: @inspection_specification
    end

    assert_redirected_to inspection_specifications_path
  end
end

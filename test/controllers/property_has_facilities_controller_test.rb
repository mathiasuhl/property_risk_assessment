require 'test_helper'

class PropertyHasFacilitiesControllerTest < ActionController::TestCase
  setup do
    @property_has_facility = property_has_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_has_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_has_facility" do
    assert_difference('PropertyHasFacility.count') do
      post :create, property_has_facility: { elevator_emergencey_call_is_working: @property_has_facility.elevator_emergencey_call_is_working, elevator_intercom_is_working: @property_has_facility.elevator_intercom_is_working, has_grap_packs: @property_has_facility.has_grap_packs, has_revision_documents: @property_has_facility.has_revision_documents, has_service_contract: @property_has_facility.has_service_contract, has_service_stickers: @property_has_facility.has_service_stickers, number: @property_has_facility.number }
    end

    assert_redirected_to property_has_facility_path(assigns(:property_has_facility))
  end

  test "should show property_has_facility" do
    get :show, id: @property_has_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_has_facility
    assert_response :success
  end

  test "should update property_has_facility" do
    patch :update, id: @property_has_facility, property_has_facility: { elevator_emergencey_call_is_working: @property_has_facility.elevator_emergencey_call_is_working, elevator_intercom_is_working: @property_has_facility.elevator_intercom_is_working, has_grap_packs: @property_has_facility.has_grap_packs, has_revision_documents: @property_has_facility.has_revision_documents, has_service_contract: @property_has_facility.has_service_contract, has_service_stickers: @property_has_facility.has_service_stickers, number: @property_has_facility.number }
    assert_redirected_to property_has_facility_path(assigns(:property_has_facility))
  end

  test "should destroy property_has_facility" do
    assert_difference('PropertyHasFacility.count', -1) do
      delete :destroy, id: @property_has_facility
    end

    assert_redirected_to property_has_facilities_path
  end
end

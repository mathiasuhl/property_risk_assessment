require 'test_helper'

class SurveyFacilitiesControllerTest < ActionController::TestCase
  setup do
    @survey_facility = survey_facilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_facilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_facility" do
    assert_difference('SurveyFacility.count') do
      post :create, survey_facility: { elevator_emergencey_call_is_working: @survey_facility.elevator_emergencey_call_is_working, elevator_intercom_is_working: @survey_facility.elevator_intercom_is_working, facility_id: @survey_facility.facility_id, has_grap_packs: @survey_facility.has_grap_packs, has_service_stickers: @survey_facility.has_service_stickers, survey_id: @survey_facility.survey_id }
    end

    assert_redirected_to survey_facility_path(assigns(:survey_facility))
  end

  test "should show survey_facility" do
    get :show, id: @survey_facility
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_facility
    assert_response :success
  end

  test "should update survey_facility" do
    patch :update, id: @survey_facility, survey_facility: { elevator_emergencey_call_is_working: @survey_facility.elevator_emergencey_call_is_working, elevator_intercom_is_working: @survey_facility.elevator_intercom_is_working, facility_id: @survey_facility.facility_id, has_grap_packs: @survey_facility.has_grap_packs, has_service_stickers: @survey_facility.has_service_stickers, survey_id: @survey_facility.survey_id }
    assert_redirected_to survey_facility_path(assigns(:survey_facility))
  end

  test "should destroy survey_facility" do
    assert_difference('SurveyFacility.count', -1) do
      delete :destroy, id: @survey_facility
    end

    assert_redirected_to survey_facilities_path
  end
end

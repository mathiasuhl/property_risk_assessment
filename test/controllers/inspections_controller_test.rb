require 'test_helper'

class InspectionsControllerTest < ActionController::TestCase
  setup do
    @inspection = inspections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inspections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inspection" do
    assert_difference('Inspection.count') do
      post :create, inspection: { date: @inspection.date, eq_number: @inspection.eq_number, facility_id: @inspection.facility_id, inspector: @inspection.inspector, inspector_company: @inspection.inspector_company, protocol_file: @inspection.protocol_file, protocol_number: @inspection.protocol_number }
    end

    assert_redirected_to inspection_path(assigns(:inspection))
  end

  test "should show inspection" do
    get :show, id: @inspection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inspection
    assert_response :success
  end

  test "should update inspection" do
    patch :update, id: @inspection, inspection: { date: @inspection.date, eq_number: @inspection.eq_number, facility_id: @inspection.facility_id, inspector: @inspection.inspector, inspector_company: @inspection.inspector_company, protocol_file: @inspection.protocol_file, protocol_number: @inspection.protocol_number }
    assert_redirected_to inspection_path(assigns(:inspection))
  end

  test "should destroy inspection" do
    assert_difference('Inspection.count', -1) do
      delete :destroy, id: @inspection
    end

    assert_redirected_to inspections_path
  end
end

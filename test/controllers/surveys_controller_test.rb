require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { has_closeable_fire_doors: @survey.has_closeable_fire_doors, has_cracks: @survey.has_cracks, has_damp_areas: @survey.has_damp_areas, has_fire_extinguisher: @survey.has_fire_extinguisher, has_fire_wall: @survey.has_fire_wall, has_free_evacuation_route: @survey.has_free_evacuation_route, has_maintanance_and_inspection_manuel: @survey.has_maintanance_and_inspection_manuel, has_maintanance_sticker: @survey.has_maintanance_sticker, property_id: @survey.property_id }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { has_closeable_fire_doors: @survey.has_closeable_fire_doors, has_cracks: @survey.has_cracks, has_damp_areas: @survey.has_damp_areas, has_fire_extinguisher: @survey.has_fire_extinguisher, has_fire_wall: @survey.has_fire_wall, has_free_evacuation_route: @survey.has_free_evacuation_route, has_maintanance_and_inspection_manuel: @survey.has_maintanance_and_inspection_manuel, has_maintanance_sticker: @survey.has_maintanance_sticker, property_id: @survey.property_id }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end

require 'test_helper'

class PlanningPermissionsControllerTest < ActionController::TestCase
  setup do
    @planning_permission = planning_permissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planning_permissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planning_permission" do
    assert_difference('PlanningPermission.count') do
      post :create, planning_permission: { name: @planning_permission.name }
    end

    assert_redirected_to planning_permission_path(assigns(:planning_permission))
  end

  test "should show planning_permission" do
    get :show, id: @planning_permission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planning_permission
    assert_response :success
  end

  test "should update planning_permission" do
    patch :update, id: @planning_permission, planning_permission: { name: @planning_permission.name }
    assert_redirected_to planning_permission_path(assigns(:planning_permission))
  end

  test "should destroy planning_permission" do
    assert_difference('PlanningPermission.count', -1) do
      delete :destroy, id: @planning_permission
    end

    assert_redirected_to planning_permissions_path
  end
end

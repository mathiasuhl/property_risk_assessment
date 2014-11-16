require 'test_helper'

class TanantsControllerTest < ActionController::TestCase
  setup do
    @tanant = tanants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tanants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tanant" do
    assert_difference('Tanant.count') do
      post :create, tanant: { address: @tanant.address, company: @tanant.company, location: @tanant.location, notes: @tanant.notes }
    end

    assert_redirected_to tanant_path(assigns(:tanant))
  end

  test "should show tanant" do
    get :show, id: @tanant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tanant
    assert_response :success
  end

  test "should update tanant" do
    patch :update, id: @tanant, tanant: { address: @tanant.address, company: @tanant.company, location: @tanant.location, notes: @tanant.notes }
    assert_redirected_to tanant_path(assigns(:tanant))
  end

  test "should destroy tanant" do
    assert_difference('Tanant.count', -1) do
      delete :destroy, id: @tanant
    end

    assert_redirected_to tanants_path
  end
end

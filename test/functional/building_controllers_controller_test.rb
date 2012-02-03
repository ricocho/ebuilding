require 'test_helper'

class BuildingControllersControllerTest < ActionController::TestCase
  setup do
    @building_controller = building_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_controller" do
    assert_difference('BuildingController.count') do
      post :create, building_controller: @building_controller.attributes
    end

    assert_redirected_to building_controller_path(assigns(:building_controller))
  end

  test "should show building_controller" do
    get :show, id: @building_controller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_controller
    assert_response :success
  end

  test "should update building_controller" do
    put :update, id: @building_controller, building_controller: @building_controller.attributes
    assert_redirected_to building_controller_path(assigns(:building_controller))
  end

  test "should destroy building_controller" do
    assert_difference('BuildingController.count', -1) do
      delete :destroy, id: @building_controller
    end

    assert_redirected_to building_controllers_path
  end
end

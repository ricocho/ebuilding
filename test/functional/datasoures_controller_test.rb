require 'test_helper'

class DatasouresControllerTest < ActionController::TestCase
  setup do
    @datasoure = datasoures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datasoures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datasoure" do
    assert_difference('Datasoure.count') do
      post :create, datasoure: @datasoure.attributes
    end

    assert_redirected_to datasoure_path(assigns(:datasoure))
  end

  test "should show datasoure" do
    get :show, id: @datasoure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datasoure
    assert_response :success
  end

  test "should update datasoure" do
    put :update, id: @datasoure, datasoure: @datasoure.attributes
    assert_redirected_to datasoure_path(assigns(:datasoure))
  end

  test "should destroy datasoure" do
    assert_difference('Datasoure.count', -1) do
      delete :destroy, id: @datasoure
    end

    assert_redirected_to datasoures_path
  end
end

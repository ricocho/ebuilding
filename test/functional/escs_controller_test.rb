require 'test_helper'

class EscsControllerTest < ActionController::TestCase
  setup do
    @esc = escs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:escs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create esc" do
    assert_difference('Esc.count') do
      post :create, esc: @esc.attributes
    end

    assert_redirected_to esc_path(assigns(:esc))
  end

  test "should show esc" do
    get :show, id: @esc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @esc
    assert_response :success
  end

  test "should update esc" do
    put :update, id: @esc, esc: @esc.attributes
    assert_redirected_to esc_path(assigns(:esc))
  end

  test "should destroy esc" do
    assert_difference('Esc.count', -1) do
      delete :destroy, id: @esc
    end

    assert_redirected_to escs_path
  end
end

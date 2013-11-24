require 'test_helper'

class Ak542sControllerTest < ActionController::TestCase
  setup do
    @ak542 = ak542s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ak542s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ak542" do
    assert_difference('Ak542.count') do
      post :create, ak542: { email: @ak542.email, name: @ak542.name }
    end

    assert_redirected_to ak542_path(assigns(:ak542))
  end

  test "should show ak542" do
    get :show, id: @ak542
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ak542
    assert_response :success
  end

  test "should update ak542" do
    patch :update, id: @ak542, ak542: { email: @ak542.email, name: @ak542.name }
    assert_redirected_to ak542_path(assigns(:ak542))
  end

  test "should destroy ak542" do
    assert_difference('Ak542.count', -1) do
      delete :destroy, id: @ak542
    end

    assert_redirected_to ak542s_path
  end
end

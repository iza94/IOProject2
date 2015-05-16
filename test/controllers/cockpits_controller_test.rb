require 'test_helper'

class CockpitsControllerTest < ActionController::TestCase
  setup do
    @cockpit = cockpits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cockpits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cockpit" do
    assert_difference('Cockpit.count') do
      post :create, cockpit: {  }
    end

    assert_redirected_to cockpit_path(assigns(:cockpit))
  end

  test "should show cockpit" do
    get :show, id: @cockpit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cockpit
    assert_response :success
  end

  test "should update cockpit" do
    patch :update, id: @cockpit, cockpit: {  }
    assert_redirected_to cockpit_path(assigns(:cockpit))
  end

  test "should destroy cockpit" do
    assert_difference('Cockpit.count', -1) do
      delete :destroy, id: @cockpit
    end

    assert_redirected_to cockpits_path
  end
end

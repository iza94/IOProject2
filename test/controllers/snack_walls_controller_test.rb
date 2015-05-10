require 'test_helper'

class SnackWallsControllerTest < ActionController::TestCase
  setup do
    @snack_wall = snack_walls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snack_walls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snack_wall" do
    assert_difference('SnackWall.count') do
      post :create, snack_wall: { title: @snack_wall.title }
    end

    assert_redirected_to snack_wall_path(assigns(:snack_wall))
  end

  test "should show snack_wall" do
    get :show, id: @snack_wall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snack_wall
    assert_response :success
  end

  test "should update snack_wall" do
    patch :update, id: @snack_wall, snack_wall: { title: @snack_wall.title }
    assert_redirected_to snack_wall_path(assigns(:snack_wall))
  end

  test "should destroy snack_wall" do
    assert_difference('SnackWall.count', -1) do
      delete :destroy, id: @snack_wall
    end

    assert_redirected_to snack_walls_path
  end
end

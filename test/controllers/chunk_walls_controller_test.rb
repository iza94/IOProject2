require 'test_helper'

class ChunkWallsControllerTest < ActionController::TestCase
  setup do
    @chunk_wall = chunk_walls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chunk_walls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chunk_wall" do
    assert_difference('ChunkWall.count') do
      post :create, chunk_wall: { title: @chunk_wall.title }
    end

    assert_redirected_to chunk_wall_path(assigns(:chunk_wall))
  end

  test "should show chunk_wall" do
    get :show, id: @chunk_wall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chunk_wall
    assert_response :success
  end

  test "should update chunk_wall" do
    patch :update, id: @chunk_wall, chunk_wall: { title: @chunk_wall.title }
    assert_redirected_to chunk_wall_path(assigns(:chunk_wall))
  end

  test "should destroy chunk_wall" do
    assert_difference('ChunkWall.count', -1) do
      delete :destroy, id: @chunk_wall
    end

    assert_redirected_to chunk_walls_path
  end
end

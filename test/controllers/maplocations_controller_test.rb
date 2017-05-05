require 'test_helper'

class MaplocationsControllerTest < ActionController::TestCase
  setup do
    @maplocation = maplocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maplocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maplocation" do
    assert_difference('Maplocation.count') do
      post :create, maplocation: { address: @maplocation.address, latitude: @maplocation.latitude, longitude: @maplocation.longitude }
    end

    assert_redirected_to maplocation_path(assigns(:maplocation))
  end

  test "should show maplocation" do
    get :show, id: @maplocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maplocation
    assert_response :success
  end

  test "should update maplocation" do
    patch :update, id: @maplocation, maplocation: { address: @maplocation.address, latitude: @maplocation.latitude, longitude: @maplocation.longitude }
    assert_redirected_to maplocation_path(assigns(:maplocation))
  end

  test "should destroy maplocation" do
    assert_difference('Maplocation.count', -1) do
      delete :destroy, id: @maplocation
    end

    assert_redirected_to maplocations_path
  end
end

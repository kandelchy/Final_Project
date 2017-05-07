require 'test_helper'

class ShoppingcartsControllerTest < ActionController::TestCase
  setup do
    @shoppingcart = shoppingcarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoppingcarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoppingcart" do
    assert_difference('Shoppingcart.count') do
      post :create, shoppingcart: { book_id: @shoppingcart.book_id, user_id: @shoppingcart.user_id }
    end

    assert_redirected_to shoppingcart_path(assigns(:shoppingcart))
  end

  test "should show shoppingcart" do
    get :show, id: @shoppingcart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoppingcart
    assert_response :success
  end

  test "should update shoppingcart" do
    patch :update, id: @shoppingcart, shoppingcart: { book_id: @shoppingcart.book_id, user_id: @shoppingcart.user_id }
    assert_redirected_to shoppingcart_path(assigns(:shoppingcart))
  end

  test "should destroy shoppingcart" do
    assert_difference('Shoppingcart.count', -1) do
      delete :destroy, id: @shoppingcart
    end

    assert_redirected_to shoppingcarts_path
  end
end

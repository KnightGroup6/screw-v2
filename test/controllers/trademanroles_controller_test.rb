require 'test_helper'

class TrademanrolesControllerTest < ActionController::TestCase
  setup do
    @trademanrole = trademanroles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trademanroles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trademanrole" do
    assert_difference('Trademanrole.count') do
      post :create, trademanrole: { name: @trademanrole.name }
    end

    assert_redirected_to trademanrole_path(assigns(:trademanrole))
  end

  test "should show trademanrole" do
    get :show, id: @trademanrole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trademanrole
    assert_response :success
  end

  test "should update trademanrole" do
    patch :update, id: @trademanrole, trademanrole: { name: @trademanrole.name }
    assert_redirected_to trademanrole_path(assigns(:trademanrole))
  end

  test "should destroy trademanrole" do
    assert_difference('Trademanrole.count', -1) do
      delete :destroy, id: @trademanrole
    end

    assert_redirected_to trademanroles_path
  end
end

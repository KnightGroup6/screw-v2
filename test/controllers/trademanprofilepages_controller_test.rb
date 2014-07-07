require 'test_helper'

class TrademanprofilepagesControllerTest < ActionController::TestCase
  setup do
    @trademanprofilepage = trademanprofilepages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trademanprofilepages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trademanprofilepage" do
    assert_difference('Trademanprofilepage.count') do
      post :create, trademanprofilepage: { ancestry: @trademanprofilepage.ancestry, content: @trademanprofilepage.content, name: @trademanprofilepage.name }
    end

    assert_redirected_to trademanprofilepage_path(assigns(:trademanprofilepage))
  end

  test "should show trademanprofilepage" do
    get :show, id: @trademanprofilepage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trademanprofilepage
    assert_response :success
  end

  test "should update trademanprofilepage" do
    patch :update, id: @trademanprofilepage, trademanprofilepage: { ancestry: @trademanprofilepage.ancestry, content: @trademanprofilepage.content, name: @trademanprofilepage.name }
    assert_redirected_to trademanprofilepage_path(assigns(:trademanprofilepage))
  end

  test "should destroy trademanprofilepage" do
    assert_difference('Trademanprofilepage.count', -1) do
      delete :destroy, id: @trademanprofilepage
    end

    assert_redirected_to trademanprofilepages_path
  end
end

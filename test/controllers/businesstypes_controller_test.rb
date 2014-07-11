require 'test_helper'

class BusinesstypesControllerTest < ActionController::TestCase
  setup do
    @businesstype = businesstypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businesstypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businesstype" do
    assert_difference('Businesstype.count') do
      post :create, businesstype: { name: @businesstype.name }
    end

    assert_redirected_to businesstype_path(assigns(:businesstype))
  end

  test "should show businesstype" do
    get :show, id: @businesstype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @businesstype
    assert_response :success
  end

  test "should update businesstype" do
    patch :update, id: @businesstype, businesstype: { name: @businesstype.name }
    assert_redirected_to businesstype_path(assigns(:businesstype))
  end

  test "should destroy businesstype" do
    assert_difference('Businesstype.count', -1) do
      delete :destroy, id: @businesstype
    end

    assert_redirected_to businesstypes_path
  end
end

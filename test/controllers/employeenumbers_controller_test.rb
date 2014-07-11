require 'test_helper'

class EmployeenumbersControllerTest < ActionController::TestCase
  setup do
    @employeenumber = employeenumbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employeenumbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employeenumber" do
    assert_difference('Employeenumber.count') do
      post :create, employeenumber: { name: @employeenumber.name }
    end

    assert_redirected_to employeenumber_path(assigns(:employeenumber))
  end

  test "should show employeenumber" do
    get :show, id: @employeenumber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employeenumber
    assert_response :success
  end

  test "should update employeenumber" do
    patch :update, id: @employeenumber, employeenumber: { name: @employeenumber.name }
    assert_redirected_to employeenumber_path(assigns(:employeenumber))
  end

  test "should destroy employeenumber" do
    assert_difference('Employeenumber.count', -1) do
      delete :destroy, id: @employeenumber
    end

    assert_redirected_to employeenumbers_path
  end
end

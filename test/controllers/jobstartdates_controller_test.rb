require 'test_helper'

class JobstartdatesControllerTest < ActionController::TestCase
  setup do
    @jobstartdate = jobstartdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobstartdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobstartdate" do
    assert_difference('Jobstartdate.count') do
      post :create, jobstartdate: { name: @jobstartdate.name }
    end

    assert_redirected_to jobstartdate_path(assigns(:jobstartdate))
  end

  test "should show jobstartdate" do
    get :show, id: @jobstartdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobstartdate
    assert_response :success
  end

  test "should update jobstartdate" do
    patch :update, id: @jobstartdate, jobstartdate: { name: @jobstartdate.name }
    assert_redirected_to jobstartdate_path(assigns(:jobstartdate))
  end

  test "should destroy jobstartdate" do
    assert_difference('Jobstartdate.count', -1) do
      delete :destroy, id: @jobstartdate
    end

    assert_redirected_to jobstartdates_path
  end
end

require 'test_helper'

class OfficehoursControllerTest < ActionController::TestCase
  setup do
    @officehour = officehours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:officehours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create officehour" do
    assert_difference('Officehour.count') do
      post :create, officehour: { name: @officehour.name }
    end

    assert_redirected_to officehour_path(assigns(:officehour))
  end

  test "should show officehour" do
    get :show, id: @officehour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @officehour
    assert_response :success
  end

  test "should update officehour" do
    put :update, id: @officehour, officehour: { name: @officehour.name }
    assert_redirected_to officehour_path(assigns(:officehour))
  end

  test "should destroy officehour" do
    assert_difference('Officehour.count', -1) do
      delete :destroy, id: @officehour
    end

    assert_redirected_to officehours_path
  end
end

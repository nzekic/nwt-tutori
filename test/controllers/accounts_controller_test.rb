require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get activate_account" do
    get :activate_account
    assert_response :success
  end

  test "should get reset_password" do
    get :reset_password
    assert_response :success
  end

end

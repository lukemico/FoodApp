require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_new_url
    assert_response :success
  end

  test "should get show" do
    get login_show_url
    assert_response :success
  end

  test "should get index" do
    get login_index_url
    assert_response :success
  end

  test "should get update" do
    get login_update_url
    assert_response :success
  end

end

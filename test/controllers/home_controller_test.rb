require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end

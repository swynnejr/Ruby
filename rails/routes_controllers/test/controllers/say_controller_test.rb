require 'test_helper'

class SayControllerTest < ActionController::TestCase
  test "should get hello_dojo" do
    get :hello_dojo
    assert_response :success
  end

  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get hello_joe" do
    get :hello_joe
    assert_response :success
  end

  test "should get hello_michael" do
    get :hello_michael
    assert_response :success
  end

end

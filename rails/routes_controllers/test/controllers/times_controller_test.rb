require 'test_helper'

class TimesControllerTest < ActionController::TestCase
  test "should get counter" do
    get :counter
    assert_response :success
  end

  test "should get restart" do
    get :restart
    assert_response :success
  end

end

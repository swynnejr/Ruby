require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get goldmine" do
    get :goldmine
    assert_response :success
  end

end

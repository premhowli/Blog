require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get second_page" do
    get :second_page
    assert_response :success
  end

end

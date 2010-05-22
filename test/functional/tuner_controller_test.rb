require 'test_helper'

class TunerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get changelog" do
    get :changelog
    assert_response :success
  end

end

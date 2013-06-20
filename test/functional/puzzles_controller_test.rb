require 'test_helper'

class PuzzlesControllerTest < ActionController::TestCase
  test "should get analyze" do
    get :analyze
    assert_response :success
  end

end

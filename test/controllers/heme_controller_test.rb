require "test_helper"

class HemeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get heme_top_url
    assert_response :success
  end
end

require 'test_helper'

class LogInControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get log_in_main_url
    assert_response :success
  end

end

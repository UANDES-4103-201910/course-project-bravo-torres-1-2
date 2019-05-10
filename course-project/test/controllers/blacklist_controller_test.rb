require 'test_helper'

class BlacklistControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get blacklist_main_url
    assert_response :success
  end

end

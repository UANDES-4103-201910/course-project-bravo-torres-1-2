require 'test_helper'

class DumpsterControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get dumpster_main_url
    assert_response :success
  end

end

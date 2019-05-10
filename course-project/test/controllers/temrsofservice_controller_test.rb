require 'test_helper'

class TemrsofserviceControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get temrsofservice_main_url
    assert_response :success
  end

end

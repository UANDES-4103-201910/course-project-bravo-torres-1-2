require 'test_helper'

class RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get registration_main_url
    assert_response :success
  end

end

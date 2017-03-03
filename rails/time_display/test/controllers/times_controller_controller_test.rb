require 'test_helper'

class TimesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get times_controller_main_url
    assert_response :success
  end

end

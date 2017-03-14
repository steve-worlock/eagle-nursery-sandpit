require 'test_helper'

class SplashpageControllerTest < ActionDispatch::IntegrationTest
  test "should get splashpage" do
    get splashpage_splashpage_url
    assert_response :success
  end

end

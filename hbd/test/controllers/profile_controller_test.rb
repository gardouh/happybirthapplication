require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get my" do
    get profile_my_url
    assert_response :success
  end

  test "should get other" do
    get profile_other_url
    assert_response :success
  end

end

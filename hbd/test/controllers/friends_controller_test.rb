require 'test_helper'

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get suscribe" do
    get friends_suscribe_url
    assert_response :success
  end

  test "should get notsuscribe" do
    get friends_notsuscribe_url
    assert_response :success
  end

end

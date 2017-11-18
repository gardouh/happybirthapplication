require 'test_helper'

class BirthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @birth = births(:one)
  end

  test "should get index" do
    get births_url
    assert_response :success
  end

  test "should get new" do
    get new_birth_url
    assert_response :success
  end

  test "should create birth" do
    assert_difference('Birth.count') do
      post births_url, params: { birth: { description: @birth.description, title: @birth.title, user_id: @birth.user_id } }
    end

    assert_redirected_to birth_url(Birth.last)
  end

  test "should show birth" do
    get birth_url(@birth)
    assert_response :success
  end

  test "should get edit" do
    get edit_birth_url(@birth)
    assert_response :success
  end

  test "should update birth" do
    patch birth_url(@birth), params: { birth: { description: @birth.description, title: @birth.title, user_id: @birth.user_id } }
    assert_redirected_to birth_url(@birth)
  end

  test "should destroy birth" do
    assert_difference('Birth.count', -1) do
      delete birth_url(@birth)
    end

    assert_redirected_to births_url
  end
end

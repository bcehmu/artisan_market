require 'test_helper'

class SubscribeMediaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscribe_media_index_url
    assert_response :success
  end

  test "should get edit" do
    get subscribe_media_edit_url
    assert_response :success
  end

end

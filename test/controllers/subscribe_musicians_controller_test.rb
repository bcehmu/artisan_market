require 'test_helper'

class SubscribeMusiciansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscribe_musicians_index_url
    assert_response :success
  end

  test "should get edit" do
    get subscribe_musicians_edit_url
    assert_response :success
  end

end

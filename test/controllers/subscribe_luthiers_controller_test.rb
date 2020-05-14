require 'test_helper'

class SubscribeLuthiersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscribe_luthiers_index_url
    assert_response :success
  end

  test "should get edit" do
    get subscribe_luthiers_edit_url
    assert_response :success
  end

end

require 'test_helper'

class LuthiersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get luthiers_index_url
    assert_response :success
  end

  test "should get show" do
    get luthiers_show_url
    assert_response :success
  end

  test "should get edit" do
    get luthiers_edit_url
    assert_response :success
  end

end

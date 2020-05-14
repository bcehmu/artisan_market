require 'test_helper'

class SubscribeProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscribe_products_index_url
    assert_response :success
  end

  test "should get edit" do
    get subscribe_products_edit_url
    assert_response :success
  end

end

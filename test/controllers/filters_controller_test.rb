require 'test_helper'

class FiltersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get filters_index_url
    assert_response :success
  end

  test "should get search" do
    get filters_search_url
    assert_response :success
  end

end

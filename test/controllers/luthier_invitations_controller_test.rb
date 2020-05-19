require 'test_helper'

class LuthierInvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get luthier_invitations_index_url
    assert_response :success
  end

  test "should get new" do
    get luthier_invitations_new_url
    assert_response :success
  end

  test "should get edit" do
    get luthier_invitations_edit_url
    assert_response :success
  end

  test "should get update" do
    get luthier_invitations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get luthier_invitations_destroy_url
    assert_response :success
  end

end

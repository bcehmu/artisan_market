require 'test_helper'

class MusicianInvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get musician_invitations_index_url
    assert_response :success
  end

  test "should get new" do
    get musician_invitations_new_url
    assert_response :success
  end

  test "should get edit" do
    get musician_invitations_edit_url
    assert_response :success
  end

  test "should get update" do
    get musician_invitations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get musician_invitations_destroy_url
    assert_response :success
  end

end

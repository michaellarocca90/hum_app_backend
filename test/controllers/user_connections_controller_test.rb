require 'test_helper'

class UserConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_connection = user_connections(:one)
  end

  test "should get index" do
    get user_connections_url, as: :json
    assert_response :success
  end

  test "should create user_connection" do
    assert_difference('UserConnection.count') do
      post user_connections_url, params: { user_connection: { connection_id: @user_connection.connection_id, user_id: @user_connection.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_connection" do
    get user_connection_url(@user_connection), as: :json
    assert_response :success
  end

  test "should update user_connection" do
    patch user_connection_url(@user_connection), params: { user_connection: { connection_id: @user_connection.connection_id, user_id: @user_connection.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_connection" do
    assert_difference('UserConnection.count', -1) do
      delete user_connection_url(@user_connection), as: :json
    end

    assert_response 204
  end
end

require 'test_helper'

class DrinkUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drink_user = drink_users(:one)
  end

  test "should get index" do
    get drink_users_url
    assert_response :success
  end

  test "should get new" do
    get new_drink_user_url
    assert_response :success
  end

  test "should create drink_user" do
    assert_difference('DrinkUser.count') do
      post drink_users_url, params: { drink_user: {  } }
    end

    assert_redirected_to drink_user_url(DrinkUser.last)
  end

  test "should show drink_user" do
    get drink_user_url(@drink_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_drink_user_url(@drink_user)
    assert_response :success
  end

  test "should update drink_user" do
    patch drink_user_url(@drink_user), params: { drink_user: {  } }
    assert_redirected_to drink_user_url(@drink_user)
  end

  test "should destroy drink_user" do
    assert_difference('DrinkUser.count', -1) do
      delete drink_user_url(@drink_user)
    end

    assert_redirected_to drink_users_url
  end
end

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_path
    assert_response :success
    assert_match(/Create an account/, response.body)
  end

  test "can create new user and logs you in" do
    post users_path params: { user: { nick_name: "Alrow", email: "arowan+1@gmail.com", password: "password" } }
    assert_response :redirect
    assert_equal "Alrow", User.last.nick_name
  end

  test "error creating new user renders new page with error" do
    post users_path params: { user: { nick_name: "Alrow", email: "allie@gmail.com", password: "password" } }
    assert_response :success
    assert_match(/taken/, response.body)
  end
end

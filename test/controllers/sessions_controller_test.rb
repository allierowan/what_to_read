require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "can get new session form" do
    get new_session_path
    assert_response :success
    assert_match(/Login/, response.body)
  end
end

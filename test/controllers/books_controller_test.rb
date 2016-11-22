require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_path
    assert_response :success
    assert_match(/Lolita/, response.body)
    assert_match(/Dune/, response.body)
  end

  test "should get show" do
    get book_path(books(:lolita).id)
    assert_response :success
    assert_match(/Nabokov/, response.body)
  end

end

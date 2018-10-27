require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get course:string" do
    get search_course:string_url
    assert_response :success
  end

  test "should get subject:string" do
    get search_subject:string_url
    assert_response :success
  end

  test "should get usesubj:boolean" do
    get search_usesubj:boolean_url
    assert_response :success
  end

end

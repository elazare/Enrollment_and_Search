require 'test_helper'

class CoursubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coursub = coursubs(:one)
  end

  test "should get index" do
    get coursubs_url
    assert_response :success
  end

  test "should get new" do
    get new_coursub_url
    assert_response :success
  end

  test "should create coursub" do
    assert_difference('Coursub.count') do
      post coursubs_url, params: { coursub: { cour_id: @coursub.cour_id, subj_id: @coursub.subj_id } }
    end

    assert_redirected_to coursub_url(Coursub.last)
  end

  test "should show coursub" do
    get coursub_url(@coursub)
    assert_response :success
  end

  test "should get edit" do
    get edit_coursub_url(@coursub)
    assert_response :success
  end

  test "should update coursub" do
    patch coursub_url(@coursub), params: { coursub: { cour_id: @coursub.cour_id, subj_id: @coursub.subj_id } }
    assert_redirected_to coursub_url(@coursub)
  end

  test "should destroy coursub" do
    assert_difference('Coursub.count', -1) do
      delete coursub_url(@coursub)
    end

    assert_redirected_to coursubs_url
  end
end

require "test_helper"

class NotepadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get notepads_new_url
    assert_response :success
  end

  test "should get index" do
    get notepads_index_url
    assert_response :success
  end

  test "should get show" do
    get notepads_show_url
    assert_response :success
  end

  test "should get edit" do
    get notepads_edit_url
    assert_response :success
  end
end

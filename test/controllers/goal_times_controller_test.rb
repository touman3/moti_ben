require "test_helper"

class GoalTimesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get goal_times_new_url
    assert_response :success
  end

  test "should get index" do
    get goal_times_index_url
    assert_response :success
  end

  test "should get edit" do
    get goal_times_edit_url
    assert_response :success
  end
end

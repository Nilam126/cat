require "test_helper"

class Attendance2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendance2 = attendance2s(:one)
  end

  test "should get index" do
    get attendance2s_url
    assert_response :success
  end

  test "should get new" do
    get new_attendance2_url
    assert_response :success
  end

  test "should create attendance2" do
    assert_difference('Attendance2.count') do
      post attendance2s_url, params: { attendance2: { attendance_date: @attendance2.attendance_date, discription: @attendance2.discription, in_time: @attendance2.in_time, out_time: @attendance2.out_time } }
    end

    assert_redirected_to attendance2_url(Attendance2.last)
  end

  test "should show attendance2" do
    get attendance2_url(@attendance2)
    assert_response :success
  end

  test "should get edit" do
    get edit_attendance2_url(@attendance2)
    assert_response :success
  end

  test "should update attendance2" do
    patch attendance2_url(@attendance2), params: { attendance2: { attendance_date: @attendance2.attendance_date, discription: @attendance2.discription, in_time: @attendance2.in_time, out_time: @attendance2.out_time } }
    assert_redirected_to attendance2_url(@attendance2)
  end

  test "should destroy attendance2" do
    assert_difference('Attendance2.count', -1) do
      delete attendance2_url(@attendance2)
    end

    assert_redirected_to attendance2s_url
  end
end

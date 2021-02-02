require "test_helper"

class Attendace3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attendace3 = attendace3s(:one)
  end

  test "should get index" do
    get attendace3s_url
    assert_response :success
  end

  test "should get new" do
    get new_attendace3_url
    assert_response :success
  end

  test "should create attendace3" do
    assert_difference('Attendace3.count') do
      post attendace3s_url, params: { attendace3: { date: @attendace3.date, discription: @attendace3.discription, employeeid: @attendace3.employeeid, employeename: @attendace3.employeename, intime: @attendace3.intime, outtime: @attendace3.outtime } }
    end

    assert_redirected_to attendace3_url(Attendace3.last)
  end

  test "should show attendace3" do
    get attendace3_url(@attendace3)
    assert_response :success
  end

  test "should get edit" do
    get edit_attendace3_url(@attendace3)
    assert_response :success
  end

  test "should update attendace3" do
    patch attendace3_url(@attendace3), params: { attendace3: { date: @attendace3.date, discription: @attendace3.discription, employeeid: @attendace3.employeeid, employeename: @attendace3.employeename, intime: @attendace3.intime, outtime: @attendace3.outtime } }
    assert_redirected_to attendace3_url(@attendace3)
  end

  test "should destroy attendace3" do
    assert_difference('Attendace3.count', -1) do
      delete attendace3_url(@attendace3)
    end

    assert_redirected_to attendace3s_url
  end
end

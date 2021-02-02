require "test_helper"

class Employee2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee2 = employee2s(:one)
  end

  test "should get index" do
    get employee2s_url
    assert_response :success
  end

  test "should get new" do
    get new_employee2_url
    assert_response :success
  end

  test "should create employee2" do
    assert_difference('Employee2.count') do
      post employee2s_url, params: { employee2: { address: @employee2.address, city: @employee2.city, contact: @employee2.contact, country: @employee2.country, email: @employee2.email, firstname: @employee2.firstname, gender: @employee2.gender, lastname: @employee2.lastname, pincode: @employee2.pincode, salary: @employee2.salary } }
    end

    assert_redirected_to employee2_url(Employee2.last)
  end

  test "should show employee2" do
    get employee2_url(@employee2)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee2_url(@employee2)
    assert_response :success
  end

  test "should update employee2" do
    patch employee2_url(@employee2), params: { employee2: { address: @employee2.address, city: @employee2.city, contact: @employee2.contact, country: @employee2.country, email: @employee2.email, firstname: @employee2.firstname, gender: @employee2.gender, lastname: @employee2.lastname, pincode: @employee2.pincode, salary: @employee2.salary } }
    assert_redirected_to employee2_url(@employee2)
  end

  test "should destroy employee2" do
    assert_difference('Employee2.count', -1) do
      delete employee2_url(@employee2)
    end

    assert_redirected_to employee2s_url
  end
end

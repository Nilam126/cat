require "application_system_test_case"

class Attendance1sTest < ApplicationSystemTestCase
  setup do
    @attendance1 = attendance1s(:one)
  end

  test "visiting the index" do
    visit attendance1s_url
    assert_selector "h1", text: "Attendance1s"
  end

  test "creating a Attendance1" do
    visit attendance1s_url
    click_on "New Attendance1"

    fill_in "Attendance date", with: @attendance1.attendance_date
    fill_in "Discription", with: @attendance1.discription
    fill_in "In time", with: @attendance1.in_time
    fill_in "Out time", with: @attendance1.out_time
    click_on "Create Attendance1"

    assert_text "Attendance1 was successfully created"
    click_on "Back"
  end

  test "updating a Attendance1" do
    visit attendance1s_url
    click_on "Edit", match: :first

    fill_in "Attendance date", with: @attendance1.attendance_date
    fill_in "Discription", with: @attendance1.discription
    fill_in "In time", with: @attendance1.in_time
    fill_in "Out time", with: @attendance1.out_time
    click_on "Update Attendance1"

    assert_text "Attendance1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Attendance1" do
    visit attendance1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attendance1 was successfully destroyed"
  end
end

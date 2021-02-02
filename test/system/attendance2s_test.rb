require "application_system_test_case"

class Attendance2sTest < ApplicationSystemTestCase
  setup do
    @attendance2 = attendance2s(:one)
  end

  test "visiting the index" do
    visit attendance2s_url
    assert_selector "h1", text: "Attendance2s"
  end

  test "creating a Attendance2" do
    visit attendance2s_url
    click_on "New Attendance2"

    fill_in "Attendance date", with: @attendance2.attendance_date
    fill_in "Discription", with: @attendance2.discription
    fill_in "In time", with: @attendance2.in_time
    fill_in "Out time", with: @attendance2.out_time
    click_on "Create Attendance2"

    assert_text "Attendance2 was successfully created"
    click_on "Back"
  end

  test "updating a Attendance2" do
    visit attendance2s_url
    click_on "Edit", match: :first

    fill_in "Attendance date", with: @attendance2.attendance_date
    fill_in "Discription", with: @attendance2.discription
    fill_in "In time", with: @attendance2.in_time
    fill_in "Out time", with: @attendance2.out_time
    click_on "Update Attendance2"

    assert_text "Attendance2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Attendance2" do
    visit attendance2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attendance2 was successfully destroyed"
  end
end

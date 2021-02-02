require "application_system_test_case"

class Attendace3sTest < ApplicationSystemTestCase
  setup do
    @attendace3 = attendace3s(:one)
  end

  test "visiting the index" do
    visit attendace3s_url
    assert_selector "h1", text: "Attendace3s"
  end

  test "creating a Attendace3" do
    visit attendace3s_url
    click_on "New Attendace3"

    fill_in "Date", with: @attendace3.date
    fill_in "Discription", with: @attendace3.discription
    fill_in "Employeeid", with: @attendace3.employeeid
    fill_in "Employeename", with: @attendace3.employeename
    fill_in "Intime", with: @attendace3.intime
    fill_in "Outtime", with: @attendace3.outtime
    click_on "Create Attendace3"

    assert_text "Attendace3 was successfully created"
    click_on "Back"
  end

  test "updating a Attendace3" do
    visit attendace3s_url
    click_on "Edit", match: :first

    fill_in "Date", with: @attendace3.date
    fill_in "Discription", with: @attendace3.discription
    fill_in "Employeeid", with: @attendace3.employeeid
    fill_in "Employeename", with: @attendace3.employeename
    fill_in "Intime", with: @attendace3.intime
    fill_in "Outtime", with: @attendace3.outtime
    click_on "Update Attendace3"

    assert_text "Attendace3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Attendace3" do
    visit attendace3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attendace3 was successfully destroyed"
  end
end

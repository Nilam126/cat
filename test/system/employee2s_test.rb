require "application_system_test_case"

class Employee2sTest < ApplicationSystemTestCase
  setup do
    @employee2 = employee2s(:one)
  end

  test "visiting the index" do
    visit employee2s_url
    assert_selector "h1", text: "Employee2s"
  end

  test "creating a Employee2" do
    visit employee2s_url
    click_on "New Employee2"

    fill_in "Address", with: @employee2.address
    fill_in "City", with: @employee2.city
    fill_in "Contact", with: @employee2.contact
    fill_in "Country", with: @employee2.country
    fill_in "Email", with: @employee2.email
    fill_in "Firstname", with: @employee2.firstname
    fill_in "Gender", with: @employee2.gender
    fill_in "Lastname", with: @employee2.lastname
    fill_in "Pincode", with: @employee2.pincode
    fill_in "Salary", with: @employee2.salary
    click_on "Create Employee2"

    assert_text "Employee2 was successfully created"
    click_on "Back"
  end

  test "updating a Employee2" do
    visit employee2s_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee2.address
    fill_in "City", with: @employee2.city
    fill_in "Contact", with: @employee2.contact
    fill_in "Country", with: @employee2.country
    fill_in "Email", with: @employee2.email
    fill_in "Firstname", with: @employee2.firstname
    fill_in "Gender", with: @employee2.gender
    fill_in "Lastname", with: @employee2.lastname
    fill_in "Pincode", with: @employee2.pincode
    fill_in "Salary", with: @employee2.salary
    click_on "Update Employee2"

    assert_text "Employee2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee2" do
    visit employee2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee2 was successfully destroyed"
  end
end

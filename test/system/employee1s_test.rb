require "application_system_test_case"

class Employee1sTest < ApplicationSystemTestCase
  setup do
    @employee1 = employee1s(:one)
  end

  test "visiting the index" do
    visit employee1s_url
    assert_selector "h1", text: "Employee1s"
  end

  test "creating a Employee1" do
    visit employee1s_url
    click_on "New Employee1"

    fill_in "Address", with: @employee1.address
    fill_in "City", with: @employee1.city
    fill_in "Contact", with: @employee1.contact
    fill_in "Country", with: @employee1.country
    fill_in "Email", with: @employee1.email
    fill_in "Firstname", with: @employee1.firstname
    fill_in "Gender", with: @employee1.gender
    fill_in "Lastname", with: @employee1.lastname
    fill_in "Pincode", with: @employee1.pincode
    fill_in "Salary", with: @employee1.salary
    click_on "Create Employee1"

    assert_text "Employee1 was successfully created"
    click_on "Back"
  end

  test "updating a Employee1" do
    visit employee1s_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee1.address
    fill_in "City", with: @employee1.city
    fill_in "Contact", with: @employee1.contact
    fill_in "Country", with: @employee1.country
    fill_in "Email", with: @employee1.email
    fill_in "Firstname", with: @employee1.firstname
    fill_in "Gender", with: @employee1.gender
    fill_in "Lastname", with: @employee1.lastname
    fill_in "Pincode", with: @employee1.pincode
    fill_in "Salary", with: @employee1.salary
    click_on "Update Employee1"

    assert_text "Employee1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee1" do
    visit employee1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee1 was successfully destroyed"
  end
end

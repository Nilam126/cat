require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Address", with: @user.address
    fill_in "City", with: @user.city
    fill_in "Contact", with: @user.contact
    fill_in "Firstname", with: @user.firstname
    fill_in "Gender", with: @user.gender
    fill_in "Lastname", with: @user.lastname
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Uid", with: @user.uid
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user.address
    fill_in "City", with: @user.city
    fill_in "Contact", with: @user.contact
    fill_in "Firstname", with: @user.firstname
    fill_in "Gender", with: @user.gender
    fill_in "Lastname", with: @user.lastname
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Uid", with: @user.uid
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
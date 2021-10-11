require "application_system_test_case"

class UserrailsTest < ApplicationSystemTestCase
  setup do
    @userrail = userrails(:one)
  end

  test "visiting the index" do
    visit userrails_url
    assert_selector "h1", text: "Userrails"
  end

  test "creating a Userrail" do
    visit userrails_url
    click_on "New Userrail"

    fill_in "User", with: @userrail.User
    fill_in "G", with: @userrail.g
    fill_in "Scaffold", with: @userrail.scaffold
    click_on "Create Userrail"

    assert_text "Userrail was successfully created"
    click_on "Back"
  end

  test "updating a Userrail" do
    visit userrails_url
    click_on "Edit", match: :first

    fill_in "User", with: @userrail.User
    fill_in "G", with: @userrail.g
    fill_in "Scaffold", with: @userrail.scaffold
    click_on "Update Userrail"

    assert_text "Userrail was successfully updated"
    click_on "Back"
  end

  test "destroying a Userrail" do
    visit userrails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userrail was successfully destroyed"
  end
end

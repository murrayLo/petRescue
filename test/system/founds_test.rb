require "application_system_test_case"

class FoundsTest < ApplicationSystemTestCase
  setup do
    @found = founds(:one)
  end

  test "visiting the index" do
    visit founds_url
    assert_selector "h1", text: "Founds"
  end

  test "creating a Found" do
    visit founds_url
    click_on "New Found"

    fill_in "Additionalinfo", with: @found.additionalInfo
    fill_in "Animal", with: @found.animal
    fill_in "Breed", with: @found.breed
    fill_in "Colour", with: @found.colour
    fill_in "Date", with: @found.date
    fill_in "Image", with: @found.image
    fill_in "Location", with: @found.location
    fill_in "Reporter", with: @found.reporter
    click_on "Create Found"

    assert_text "Found was successfully created"
    click_on "Back"
  end

  test "updating a Found" do
    visit founds_url
    click_on "Edit", match: :first

    fill_in "Additionalinfo", with: @found.additionalInfo
    fill_in "Animal", with: @found.animal
    fill_in "Breed", with: @found.breed
    fill_in "Colour", with: @found.colour
    fill_in "Date", with: @found.date
    fill_in "Image", with: @found.image
    fill_in "Location", with: @found.location
    fill_in "Reporter", with: @found.reporter
    click_on "Update Found"

    assert_text "Found was successfully updated"
    click_on "Back"
  end

  test "destroying a Found" do
    visit founds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Found was successfully destroyed"
  end
end

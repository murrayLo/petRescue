require "application_system_test_case"

class LostsTest < ApplicationSystemTestCase
  setup do
    @lost = losts(:one)
  end

  test "visiting the index" do
    visit losts_url
    assert_selector "h1", text: "Losts"
  end

  test "creating a Lost" do
    visit losts_url
    click_on "New Lost"

    fill_in "Additionalinfo", with: @lost.additionalInfo
    fill_in "Animal", with: @lost.animal
    fill_in "Breed", with: @lost.breed
    fill_in "Colour", with: @lost.colour
    fill_in "Date", with: @lost.date
    fill_in "Image", with: @lost.image
    fill_in "Location", with: @lost.location
    fill_in "Reporter", with: @lost.reporter
    click_on "Create Lost"

    assert_text "Lost was successfully created"
    click_on "Back"
  end

  test "updating a Lost" do
    visit losts_url
    click_on "Edit", match: :first

    fill_in "Additionalinfo", with: @lost.additionalInfo
    fill_in "Animal", with: @lost.animal
    fill_in "Breed", with: @lost.breed
    fill_in "Colour", with: @lost.colour
    fill_in "Date", with: @lost.date
    fill_in "Image", with: @lost.image
    fill_in "Location", with: @lost.location
    fill_in "Reporter", with: @lost.reporter
    click_on "Update Lost"

    assert_text "Lost was successfully updated"
    click_on "Back"
  end

  test "destroying a Lost" do
    visit losts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lost was successfully destroyed"
  end
end

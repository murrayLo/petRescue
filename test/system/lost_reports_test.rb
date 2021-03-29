require "application_system_test_case"

class LostReportsTest < ApplicationSystemTestCase
  setup do
    @lost_report = lost_reports(:one)
  end

  test "visiting the index" do
    visit lost_reports_url
    assert_selector "h1", text: "Lost Reports"
  end

  test "creating a Lost report" do
    visit lost_reports_url
    click_on "New Lost Report"

    fill_in "Additionalinfo", with: @lost_report.additionalInfo
    fill_in "Animal", with: @lost_report.animal
    fill_in "Breed", with: @lost_report.breed
    fill_in "Colour", with: @lost_report.colour
    fill_in "Date", with: @lost_report.date
    fill_in "Image", with: @lost_report.image
    fill_in "Location", with: @lost_report.location
    fill_in "Reporter", with: @lost_report.reporter
    click_on "Create Lost report"

    assert_text "Lost report was successfully created"
    click_on "Back"
  end

  test "updating a Lost report" do
    visit lost_reports_url
    click_on "Edit", match: :first

    fill_in "Additionalinfo", with: @lost_report.additionalInfo
    fill_in "Animal", with: @lost_report.animal
    fill_in "Breed", with: @lost_report.breed
    fill_in "Colour", with: @lost_report.colour
    fill_in "Date", with: @lost_report.date
    fill_in "Image", with: @lost_report.image
    fill_in "Location", with: @lost_report.location
    fill_in "Reporter", with: @lost_report.reporter
    click_on "Update Lost report"

    assert_text "Lost report was successfully updated"
    click_on "Back"
  end

  test "destroying a Lost report" do
    visit lost_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lost report was successfully destroyed"
  end
end

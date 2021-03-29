require "application_system_test_case"

class FoundReportsTest < ApplicationSystemTestCase
  setup do
    @found_report = found_reports(:one)
  end

  test "visiting the index" do
    visit found_reports_url
    assert_selector "h1", text: "Found Reports"
  end

  test "creating a Found report" do
    visit found_reports_url
    click_on "New Found Report"

    fill_in "Additionalinfo", with: @found_report.additionalInfo
    fill_in "Animal", with: @found_report.animal
    fill_in "Breed", with: @found_report.breed
    fill_in "Colour", with: @found_report.colour
    fill_in "Date", with: @found_report.date
    fill_in "Image", with: @found_report.image
    fill_in "Location", with: @found_report.location
    fill_in "Reporter", with: @found_report.reporter
    click_on "Create Found report"

    assert_text "Found report was successfully created"
    click_on "Back"
  end

  test "updating a Found report" do
    visit found_reports_url
    click_on "Edit", match: :first

    fill_in "Additionalinfo", with: @found_report.additionalInfo
    fill_in "Animal", with: @found_report.animal
    fill_in "Breed", with: @found_report.breed
    fill_in "Colour", with: @found_report.colour
    fill_in "Date", with: @found_report.date
    fill_in "Image", with: @found_report.image
    fill_in "Location", with: @found_report.location
    fill_in "Reporter", with: @found_report.reporter
    click_on "Update Found report"

    assert_text "Found report was successfully updated"
    click_on "Back"
  end

  test "destroying a Found report" do
    visit found_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Found report was successfully destroyed"
  end
end

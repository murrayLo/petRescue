require "application_system_test_case"

class PetReportsTest < ApplicationSystemTestCase
  setup do
    @pet_report = pet_reports(:one)
  end

  test "visiting the index" do
    visit pet_reports_url
    assert_selector "h1", text: "Pet Reports"
  end

  test "creating a Pet report" do
    visit pet_reports_url
    click_on "New Pet Report"

    fill_in "Additionalinfo", with: @pet_report.additionalInfo
    fill_in "Animal", with: @pet_report.animal
    fill_in "Breed", with: @pet_report.breed
    fill_in "Colour", with: @pet_report.colour
    fill_in "Date", with: @pet_report.date
    fill_in "Image data", with: @pet_report.image_data
    fill_in "Location", with: @pet_report.location
    fill_in "Reportedby", with: @pet_report.reportedBy
    fill_in "Reporting", with: @pet_report.reporting
    click_on "Create Pet report"

    assert_text "Pet report was successfully created"
    click_on "Back"
  end

  test "updating a Pet report" do
    visit pet_reports_url
    click_on "Edit", match: :first

    fill_in "Additionalinfo", with: @pet_report.additionalInfo
    fill_in "Animal", with: @pet_report.animal
    fill_in "Breed", with: @pet_report.breed
    fill_in "Colour", with: @pet_report.colour
    fill_in "Date", with: @pet_report.date
    fill_in "Image data", with: @pet_report.image_data
    fill_in "Location", with: @pet_report.location
    fill_in "Reportedby", with: @pet_report.reportedBy
    fill_in "Reporting", with: @pet_report.reporting
    click_on "Update Pet report"

    assert_text "Pet report was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet report" do
    visit pet_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet report was successfully destroyed"
  end
end

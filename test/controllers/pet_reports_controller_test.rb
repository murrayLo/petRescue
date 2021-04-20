require "test_helper"

class PetReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_report = pet_reports(:one)
  end

  test "should get index" do
    get pet_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_pet_report_url
    assert_response :success
  end

  test "should create pet_report" do
    assert_difference('PetReport.count') do
      post pet_reports_url, params: { pet_report: { additionalInfo: @pet_report.additionalInfo, animal: @pet_report.animal, breed: @pet_report.breed, colour: @pet_report.colour, date: @pet_report.date, image_data: @pet_report.image_data, location: @pet_report.location, reportedBy: @pet_report.reportedBy, reporting: @pet_report.reporting } }
    end

    assert_redirected_to pet_report_url(PetReport.last)
  end

  test "should show pet_report" do
    get pet_report_url(@pet_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_pet_report_url(@pet_report)
    assert_response :success
  end

  test "should update pet_report" do
    patch pet_report_url(@pet_report), params: { pet_report: { additionalInfo: @pet_report.additionalInfo, animal: @pet_report.animal, breed: @pet_report.breed, colour: @pet_report.colour, date: @pet_report.date, image_data: @pet_report.image_data, location: @pet_report.location, reportedBy: @pet_report.reportedBy, reporting: @pet_report.reporting } }
    assert_redirected_to pet_report_url(@pet_report)
  end

  test "should destroy pet_report" do
    assert_difference('PetReport.count', -1) do
      delete pet_report_url(@pet_report)
    end

    assert_redirected_to pet_reports_url
  end
end

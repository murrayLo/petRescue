require "test_helper"

class FoundReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @found_report = found_reports(:one)
  end

  test "should get index" do
    get found_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_found_report_url
    assert_response :success
  end

  test "should create found_report" do
    assert_difference('FoundReport.count') do
      post found_reports_url, params: { found_report: { additionalInfo: @found_report.additionalInfo, animal: @found_report.animal, breed: @found_report.breed, colour: @found_report.colour, date: @found_report.date, image: @found_report.image, location: @found_report.location, reporter: @found_report.reporter } }
    end

    assert_redirected_to found_report_url(FoundReport.last)
  end

  test "should show found_report" do
    get found_report_url(@found_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_found_report_url(@found_report)
    assert_response :success
  end

  test "should update found_report" do
    patch found_report_url(@found_report), params: { found_report: { additionalInfo: @found_report.additionalInfo, animal: @found_report.animal, breed: @found_report.breed, colour: @found_report.colour, date: @found_report.date, image: @found_report.image, location: @found_report.location, reporter: @found_report.reporter } }
    assert_redirected_to found_report_url(@found_report)
  end

  test "should destroy found_report" do
    assert_difference('FoundReport.count', -1) do
      delete found_report_url(@found_report)
    end

    assert_redirected_to found_reports_url
  end
end

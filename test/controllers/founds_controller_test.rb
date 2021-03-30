require "test_helper"

class FoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @found = founds(:one)
  end

  test "should get index" do
    get founds_url
    assert_response :success
  end

  test "should get new" do
    get new_found_url
    assert_response :success
  end

  test "should create found" do
    assert_difference('Found.count') do
      post founds_url, params: { found: { additionalInfo: @found.additionalInfo, animal: @found.animal, breed: @found.breed, colour: @found.colour, date: @found.date, image: @found.image, location: @found.location, reporter: @found.reporter } }
    end

    assert_redirected_to found_url(Found.last)
  end

  test "should show found" do
    get found_url(@found)
    assert_response :success
  end

  test "should get edit" do
    get edit_found_url(@found)
    assert_response :success
  end

  test "should update found" do
    patch found_url(@found), params: { found: { additionalInfo: @found.additionalInfo, animal: @found.animal, breed: @found.breed, colour: @found.colour, date: @found.date, image: @found.image, location: @found.location, reporter: @found.reporter } }
    assert_redirected_to found_url(@found)
  end

  test "should destroy found" do
    assert_difference('Found.count', -1) do
      delete found_url(@found)
    end

    assert_redirected_to founds_url
  end
end

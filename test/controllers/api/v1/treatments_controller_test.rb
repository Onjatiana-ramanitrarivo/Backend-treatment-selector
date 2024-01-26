require "test_helper"

class Api::V1::TreatmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_treatments_create_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_treatments_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_treatments_show_url
    assert_response :success
  end
end

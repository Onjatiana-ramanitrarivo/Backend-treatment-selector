require "test_helper"

class Api::V1::TreatmentLinesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_treatment_lines_create_url
    assert_response :success
  end

  test "should get index" do
    get api_v1_treatment_lines_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_treatment_lines_show_url
    assert_response :success
  end

  test "should get index_all" do
    get api_v1_treatment_lines_index_all_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_treatment_lines_destroy_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_treatment_lines_update_url
    assert_response :success
  end
end

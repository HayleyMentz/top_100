require "test_helper"

class Api::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get api_pages_show_url
    assert_response :success
  end

  test "should get create" do
    get api_pages_create_url
    assert_response :success
  end

  test "should get update" do
    get api_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_pages_destroy_url
    assert_response :success
  end
end

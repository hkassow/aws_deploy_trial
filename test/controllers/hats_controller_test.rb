require "test_helper"

class HatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hat = hats(:one)
  end

  test "should get index" do
    get hats_url, as: :json
    assert_response :success
  end

  test "should create hat" do
    assert_difference("Hat.count") do
      post hats_url, params: { hat: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show hat" do
    get hat_url(@hat), as: :json
    assert_response :success
  end

  test "should update hat" do
    patch hat_url(@hat), params: { hat: {  } }, as: :json
    assert_response :success
  end

  test "should destroy hat" do
    assert_difference("Hat.count", -1) do
      delete hat_url(@hat), as: :json
    end

    assert_response :no_content
  end
end

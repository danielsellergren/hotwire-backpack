require "test_helper"

class BackpacksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backpacks_index_url
    assert_response :success
  end

  test "should get show" do
    get backpacks_show_url
    assert_response :success
  end
end

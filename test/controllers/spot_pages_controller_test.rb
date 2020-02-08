require 'test_helper'

class SpotPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get night" do
    get spot_pages_night_url
    assert_response :success
  end

  test "should get dinner" do
    get spot_pages_dinner_url
    assert_response :success
  end

end

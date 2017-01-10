require 'test_helper'

class VendorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendors_index_url
    assert_response :success
  end

  test "should get search_by_tire" do
    get vendors_search_by_tire_url
    assert_response :success
  end

  test "should get search_by_car" do
    get vendors_search_by_car_url
    assert_response :success
  end

end

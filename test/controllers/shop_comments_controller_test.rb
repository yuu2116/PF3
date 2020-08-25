require 'test_helper'

class ShopCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get shop_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get shop_comments_destroy_url
    assert_response :success
  end

end

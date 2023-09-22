require "test_helper"

class WeddingGalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wedding_gallery_index_url
    assert_response :success
  end
end

require "test_helper"

class SessionsGalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sessions_gallery_index_url
    assert_response :success
  end
end

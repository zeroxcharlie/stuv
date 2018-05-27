require 'test_helper'

class StuvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stuv_index_url
    assert_response :success
  end

end

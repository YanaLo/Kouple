require 'test_helper'

class ContactrequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contactrequest_index_url
    assert_response :success
  end

  test "should get new" do
    get contactrequest_new_url
    assert_response :success
  end

end

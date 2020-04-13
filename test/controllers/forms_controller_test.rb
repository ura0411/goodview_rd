require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get forms_list_url
    assert_response :success
  end

  test "should get show" do
    get forms_show_url
    assert_response :success
  end

  test "should get index" do
    get forms_index_url
    assert_response :success
  end

  test "should get edit" do
    get forms_edit_url
    assert_response :success
  end

end

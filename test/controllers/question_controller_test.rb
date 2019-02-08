require 'test_helper'

class QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get question_edit_url
    assert_response :success
  end

  test "should get index" do
    get question_index_url
    assert_response :success
  end

end

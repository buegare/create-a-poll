require 'test_helper'

class PollQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get poll_questions_new_url
    assert_response :success
  end

end

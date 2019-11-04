require 'test_helper'

class AdviceQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advice_question = advice_questions(:one)
  end

  test "should get index" do
    get advice_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_advice_question_url
    assert_response :success
  end

  test "should create advice_question" do
    assert_difference('AdviceQuestion.count') do
      post advice_questions_url, params: { advice_question: { desc: @advice_question.desc, title: @advice_question.title, topic_id: @advice_question.topic_id, user_id: @advice_question.user_id } }
    end

    assert_redirected_to advice_question_url(AdviceQuestion.last)
  end

  test "should show advice_question" do
    get advice_question_url(@advice_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_advice_question_url(@advice_question)
    assert_response :success
  end

  test "should update advice_question" do
    patch advice_question_url(@advice_question), params: { advice_question: { desc: @advice_question.desc, title: @advice_question.title, topic_id: @advice_question.topic_id, user_id: @advice_question.user_id } }
    assert_redirected_to advice_question_url(@advice_question)
  end

  test "should destroy advice_question" do
    assert_difference('AdviceQuestion.count', -1) do
      delete advice_question_url(@advice_question)
    end

    assert_redirected_to advice_questions_url
  end
end

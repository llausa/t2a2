require 'test_helper'

class AdviceRepliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advice_reply = advice_replies(:one)
  end

  test "should get index" do
    get advice_replies_url
    assert_response :success
  end

  test "should get new" do
    get new_advice_reply_url
    assert_response :success
  end

  test "should create advice_reply" do
    assert_difference('AdviceReply.count') do
      post advice_replies_url, params: { advice_reply: { advice_question_id: @advice_reply.advice_question_id, desc: @advice_reply.desc, title: @advice_reply.title, user_id: @advice_reply.user_id } }
    end

    assert_redirected_to advice_reply_url(AdviceReply.last)
  end

  test "should show advice_reply" do
    get advice_reply_url(@advice_reply)
    assert_response :success
  end

  test "should get edit" do
    get edit_advice_reply_url(@advice_reply)
    assert_response :success
  end

  test "should update advice_reply" do
    patch advice_reply_url(@advice_reply), params: { advice_reply: { advice_question_id: @advice_reply.advice_question_id, desc: @advice_reply.desc, title: @advice_reply.title, user_id: @advice_reply.user_id } }
    assert_redirected_to advice_reply_url(@advice_reply)
  end

  test "should destroy advice_reply" do
    assert_difference('AdviceReply.count', -1) do
      delete advice_reply_url(@advice_reply)
    end

    assert_redirected_to advice_replies_url
  end
end

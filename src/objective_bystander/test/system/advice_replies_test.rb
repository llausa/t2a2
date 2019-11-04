require "application_system_test_case"

class AdviceRepliesTest < ApplicationSystemTestCase
  setup do
    @advice_reply = advice_replies(:one)
  end

  test "visiting the index" do
    visit advice_replies_url
    assert_selector "h1", text: "Advice Replies"
  end

  test "creating a Advice reply" do
    visit advice_replies_url
    click_on "New Advice Reply"

    fill_in "Advice question", with: @advice_reply.advice_question_id
    fill_in "Desc", with: @advice_reply.desc
    fill_in "Title", with: @advice_reply.title
    fill_in "User", with: @advice_reply.user_id
    click_on "Create Advice reply"

    assert_text "Advice reply was successfully created"
    click_on "Back"
  end

  test "updating a Advice reply" do
    visit advice_replies_url
    click_on "Edit", match: :first

    fill_in "Advice question", with: @advice_reply.advice_question_id
    fill_in "Desc", with: @advice_reply.desc
    fill_in "Title", with: @advice_reply.title
    fill_in "User", with: @advice_reply.user_id
    click_on "Update Advice reply"

    assert_text "Advice reply was successfully updated"
    click_on "Back"
  end

  test "destroying a Advice reply" do
    visit advice_replies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advice reply was successfully destroyed"
  end
end

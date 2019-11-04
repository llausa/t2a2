require "application_system_test_case"

class AdviceQuestionsTest < ApplicationSystemTestCase
  setup do
    @advice_question = advice_questions(:one)
  end

  test "visiting the index" do
    visit advice_questions_url
    assert_selector "h1", text: "Advice Questions"
  end

  test "creating a Advice question" do
    visit advice_questions_url
    click_on "New Advice Question"

    fill_in "Desc", with: @advice_question.desc
    fill_in "Title", with: @advice_question.title
    fill_in "Topic", with: @advice_question.topic_id
    fill_in "User", with: @advice_question.user_id
    click_on "Create Advice question"

    assert_text "Advice question was successfully created"
    click_on "Back"
  end

  test "updating a Advice question" do
    visit advice_questions_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @advice_question.desc
    fill_in "Title", with: @advice_question.title
    fill_in "Topic", with: @advice_question.topic_id
    fill_in "User", with: @advice_question.user_id
    click_on "Update Advice question"

    assert_text "Advice question was successfully updated"
    click_on "Back"
  end

  test "destroying a Advice question" do
    visit advice_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advice question was successfully destroyed"
  end
end

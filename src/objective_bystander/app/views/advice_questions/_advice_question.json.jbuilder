json.extract! advice_question, :id, :user_id, :topic_id, :title, :desc, :created_at, :updated_at
json.url advice_question_url(advice_question, format: :json)

json.extract! advice_reply, :id, :user_id, :advice_question_id, :title, :desc, :created_at, :updated_at
json.url advice_reply_url(advice_reply, format: :json)

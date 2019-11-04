class AdviceReply < ApplicationRecord
  belongs_to :user
  belongs_to :advice_question
end

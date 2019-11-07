class AdviceQuestion < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  has_many :advice_replies, dependent: :destroy
end

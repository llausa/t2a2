class AdviceQuestion < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_one_attached :img

  has_many :advice_replies, dependent: :destroy
end

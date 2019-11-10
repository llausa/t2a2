# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :user
  has_many :advice_questions, dependent: :destroy

  validate :topic_count_within_limit, on: :create

  def topic_count_within_limit
    if self.user.topics.count >= 4
      errors.add(:base, "You've hit maximum number of topics per User")
    end
  end
end

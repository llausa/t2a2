class Topic < ApplicationRecord
  belongs_to :user
  has_many :advice_questions, dependent: :destroy
end

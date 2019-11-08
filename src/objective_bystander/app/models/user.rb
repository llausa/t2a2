# frozen_string_literal: true

class User < ApplicationRecord
  rolify
  has_many :topics, dependent: :destroy
  has_many :advice_replies, dependent: :destroy

  has_many :advice_questions, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_create :set_username

  private

  def set_username
    words = %w[poem
                mood
                reflection
                library
                operation
                situation
                possibility
                education
                drama
                investment
                inspection
                profession
                restaurant
                people
                pizza
                currency
                cheek
                queen]
    self.username = wordwithnumber(words)
    # "user-#{SecureRandom.hex(5)}"
  end

  def wordwithnumber(words)
    words[rand(words.length)]+(rand(900)+100).to_s()
  end
end

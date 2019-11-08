# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @general_topic = Topic.find_by(title: 'General')
    @wealth_topic = Topic.find_by(title: 'Wealth')
    @health_topic = Topic.find_by(title: 'Health')
    @relationships_topic = Topic.find_by(title: 'Relationships')

    if Topic.all[4..-1].empty?
      @msg = 'bruh'
    else
      @advisor_topics = Topic.where.not(title: 'General' || 'Wealth' || 'Health' || 'Relationships')
    end

  end

  def user_profile
    if current_user.roles.first.name.include?('Advisor')
      @topics = Topic.where(user_id: current_user.id)
      @replies = AdviceReply.where(user_id: current_user.id)
    end

    if current_user.roles.first.name.include?('Advisee')
      @questions = AdviceQuestion.where(user_id: current_user.id)
    end
  end
end

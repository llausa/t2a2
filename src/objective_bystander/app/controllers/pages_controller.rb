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

  end
end

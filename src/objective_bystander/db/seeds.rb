# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all
puts '1'
Role.create!(name: 'Advisor')
Role.create!(name: 'Advisee')
Role.create!(name: 'Admin')

# ID will vary but here it is: 21
User.destroy_all
puts '2'
user1 = User.new
user1.email = 'admin@mail.com'
user1.password = 'Test02'
user1.password_confirmation = 'Test02'
user1.role_ids = Role.where(name: 'Admin').first.id
user1.save!

user_advisor_2 = User.new
user_advisor_2.email = 'advisor@mail.com'
user_advisor_2.password = 'Test02'
user_advisor_2.password_confirmation = 'Test02'
user_advisor_2.role_ids = Role.where(name: 'Advisor').first.id
user_advisor_2.save!

user_advisor_3 = User.new
user_advisor_3.email = 'advisor3@mail.com'
user_advisor_3.password = 'Test02'
user_advisor_3.password_confirmation = 'Test02'
user_advisor_3.role_ids = Role.where(name: 'Advisor').first.id
user_advisor_3.save!

user_advisor_4 = User.new
user_advisor_4.email = 'advisor4@mail.com'
user_advisor_4.password = 'Test02'
user_advisor_4.password_confirmation = 'Test02'
user_advisor_4.role_ids = Role.where(name: 'Advisor').first.id
user_advisor_4.save!

user_advisor_5 = User.new
user_advisor_5.email = 'advisor5@mail.com'
user_advisor_5.password = 'Test02'
user_advisor_5.password_confirmation = 'Test02'
user_advisor_5.role_ids = Role.where(name: 'Advisor').first.id
user_advisor_5.save!

user_advisee_3 = User.new
user_advisee_3.email = 'advisee@mail.com'
user_advisee_3.password = 'Test02'
user_advisee_3.password_confirmation = 'Test02'
user_advisee_3.role_ids = Role.where(name: 'Advisee').first.id
user_advisee_3.save!

user_advisee_4 = User.new
user_advisee_4.email = 'advisee4@mail.com'
user_advisee_4.password = 'Test02'
user_advisee_4.password_confirmation = 'Test02'
user_advisee_4.role_ids = Role.where(name: 'Advisee').first.id
user_advisee_4.save!

user_advisee_5 = User.new
user_advisee_5.email = 'advisee5@mail.com'
user_advisee_5.password = 'Test02'
user_advisee_5.password_confirmation = 'Test02'
user_advisee_5.role_ids = Role.where(name: 'Advisee').first.id
user_advisee_5.save!

Topic.destroy_all
puts '3'
topic_1 = Topic.create!(user_id: user1.id,
              title: 'General',
              desc: 'This is where you can ask general advice from the Advisors in this site')

topic_2 = Topic.create!(user_id: user1.id,
              title: 'Health',
              desc: 'This is where you can ask Health-related advice from the Advisors in this site')

topic_3 = Topic.create!(user_id: user1.id,
              title: 'Wealth',
              desc: 'This is where you can ask Wealth-related advice from the Advisors in this site')

topic_4 = Topic.create!(user_id: user1.id,
              title: 'Relationships',
              desc: 'This is where you can ask Relationship-related advice from the Advisors in this site')

topic_5 = Topic.create!(user_id: user_advisor_2.id,
              title: 'Want to learn how to code? I can help you figure out what to learn!',
              desc: 'Learning to code is wholesome so you should definitely do it!')

topic_6 = Topic.create!(user_id: user_advisor_2.id,
              title: 'Need Advice on Software Development? I can help!',
              desc: 'Learning to code is wholesome so you should definitely do it!')

topic_7 = Topic.create!(user_id: user_advisor_3.id,
              title: 'Random Advice Offering 3',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

topic_8 = Topic.create!(user_id: user_advisor_4.id,
              title: 'Random Advice Offering 4',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

topic_9 = Topic.create!(user_id: user_advisor_4.id,
              title: 'Random Advice Offering 5',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

topic_10 = Topic.create!(user_id: user_advisor_4.id,
              title: 'Random Advice Offering 6',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

topic_11 = Topic.create!(user_id: user_advisor_5.id,
              title: 'Random Advice Offering 7',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

topic_12 = Topic.create!(user_id: user_advisor_5.id,
              title: 'Random Advice Offering 8',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

# AdviceQuestion(id: integer, user_id: integer, topic_id: integer, title: text, desc: text, created_at: datetime, updated_at: datetime)

AdviceQuestion.destroy_all
puts '4'
advice_question_1 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_1.id,
                      title: 'Pleas help me! How do I code a rails marketplace from scratch?',
                      desc: 'I have no idea what I am doing please help me!')
puts '5'
advice_question_2 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_10.id,
                      title: 'Bring to the table win-win survival strategies to ensure proactive domination.',
                      desc: 'At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution.')
puts '6'
advice_question_3 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_6.id,
                      title: 'Bring to the table win-win survival strategies to ensure proactive domination.',
                      desc: 'At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution.')
puts '7'
advice_question_4 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_8.id,
                      title: 'Bring to the table win-win survival strategies to ensure proactive domination.',
                      desc: 'At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution.')
puts '8'
advice_question_5 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_10.id,
                      title: 'Bring to the table win-win survival strategies to ensure proactive domination.',
                      desc: 'At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution.')
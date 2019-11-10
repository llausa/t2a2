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
              desc: 'Coding is wholesome but sometimes it can be hard - AMA!')

topic_7 = Topic.create!(user_id: user_advisor_3.id,
              title: 'Professional Wine Taster Here. Learn to be a Wine Snob!',
              desc: 'Impress your friends, family and date with super advanced knowledge of wine!')

topic_8 = Topic.create!(user_id: user_advisor_4.id,
              title: 'I swam across the English Channel',
              desc: 'Endurance swimming is a calling and this is your call - AMA')

topic_9 = Topic.create!(user_id: user_advisor_4.id,
              title: 'AMA I enjoy writing technical documentation...',
              desc: 'Hard to believe right? But it is true. If you are unsure how to structure an ERD ask away!')

topic_10 = Topic.create!(user_id: user_advisor_4.id,
              title: 'Random Advice Offering 6',
              desc: 'Random randomness is super random and trying to sort through the randomness is random.')

topic_11 = Topic.create!(user_id: user_advisor_5.id,
              title: 'The Russians did it! No joke!',
              desc: 'They successfully masterminded the murder of a billionaire who blackmailed other billionaires - AMA')

topic_12 = Topic.create!(user_id: user_advisor_5.id,
              title: 'I have read 3 books in my entire life. Still Wiser than you!',
              desc: 'Ask me about living life as it truly is and not as some book writer tells you it is!')

# AdviceQuestion(id: integer, user_id: integer, topic_id: integer, title: text, desc: text, created_at: datetime, updated_at: datetime)

AdviceQuestion.destroy_all
puts '4'
advice_question_1 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_1.id,
                      title: 'What is some good general advice for college students?',
                      desc: 'I have no idea what I am doing please help me!')
puts '5'
advice_question_2 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_1.id,
                      title: 'What are some fascinating examples of ancient or medieval technology?',
                      desc: 'At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution.')
puts '6'
advice_question_3 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_1.id,
                      title: 'Is it safe to take a shower during a thunderstorm?',
                      desc: 'Was not really sure who else to ask...')
puts '7'

advice_question_4 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_2.id,
                      title: 'Is beer good for health?',
                      desc: 'Aenean eget tortor et sapien elementum imperdiet quis quis quam. Praesent volutpat lacinia neque sit amet faucibus.')

advice_question_5 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_2.id,
                      title: 'What is the best way to stay healthy?',
                      desc: 'In iaculis purus nec dignissim mollis.')

advice_question_6 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_2.id,
                      title: 'What are the health benefits of honey?',
                      desc: 'Curabitur ultricies, turpis nec mollis porta, est mauris volutpat est, lacinia condimentum leo est et lacus.')

advice_question_7 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_3.id,
                      title: 'What is the greatest secret of wealth?',
                      desc: 'Fusce accumsan, leo a cursus finibus, leo orci eleifend erat, a placerat felis tellus at est.')

advice_question_8 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_3.id,
                      title: 'How do you build a lot of wealth starting from zero?',
                      desc: 'Donec vehicula dolor vel ligula imperdiet, ac viverra urna auctor.')

advice_question_9 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_4.id,
                      title: 'Do distance relationships work? How can you make it work?',
                      desc: 'Phasellus felis elit, commodo eu ex vel, laoreet placerat neque.')

puts '8'

advice_question_10 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_5.id,
                      title: 'Bring to the table win-win survival strategies to ensure proactive domination.',
                      desc: 'At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution.')

advice_question_11 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_5.id,
                      title: 'Is it true that insulin makes you age faster or is it just more dieting mumbo jumbo?',
                      desc: 'Praesent at interdum orci. Morbi id porttitor elit.')

advice_question_12 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_6.id,
                      title: 'How should I prepare for a job interview for a position in investment management, primarily equities?',
                      desc: 'Donec vestibulum nibh id dui pharetra aliquet.')

advice_question_13 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_8.id,
                      title: 'What is the worst mistake ever made in computer science and programming that proved to be painful for programmers for years?
                      This question previously had details. They are now in a comment.',
                      desc: 'Integer consectetur quam ut lectus lobortis, maximus molestie purus laoreet.')

advice_question_14 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_9.id,
                      title: 'How did Susan Bennett not know she was the voice of Siri until after she was recognized by a friend?',
                      desc: 'Cras volutpat venenatis massa, et porta lectus sollicitudin non. Vestibulum suscipit est sit amet lectus bibendum porta. Curabitur sit amet ipsum nec lorem volutpat iaculis. Aenean vitae ipsum ut arcu efficitur convallis a at magna.')

advice_question_15 = AdviceQuestion.create!(
                      user_id: user_advisee_3.id,
                      topic_id: topic_10.id,
                      title: 'How has Bruce Wayne acquired so many skills?',
                      desc: 'Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas lobortis auctor dui, vel congue justo imperdiet sit amet.')

advice_question_16 = AdviceQuestion.create!(
                      user_id: user_advisee_5.id,
                      topic_id: topic_10.id,
                      title: 'What do top students before, during and after lectures?',
                      desc: 'Quisque dui tellus, varius id sagittis ac, lacinia non erat.')

advice_question_17 = AdviceQuestion.create!(
                      user_id: user_advisee_4.id,
                      topic_id: topic_12.id,
                      title: 'Is reading overrated?',
                      desc: 'Aenean dictum enim metus, vitae ultricies arcu pharetra et.')

puts '9'
# AdviceReply(id: integer, user_id: integer, advice_question_id: integer, title: text, desc: text, created_at: datetime, updated_at: datetime)
advice_reply_1 = AdviceReply.create!(
                  user_id: user_advisor_2.id,
                  advice_question_id: advice_question_3.id,
                  title: 'Ok Boomer, how do I Skdeet or Skedaddle?',
                  desc: 'Epstein didnt kill himself')

advice_reply_1 = AdviceReply.create!(
                  user_id: user_advisor_2.id,
                  advice_question_id: advice_question_5.id,
                  title: 'Ok Zoomer, how do I Skdeet or Skedaddle?',
                  desc: 'Epstein did kill himself')

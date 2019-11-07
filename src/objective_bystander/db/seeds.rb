# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.destroy_all

Role.create!(name: 'Advisor')
Role.create!(name: 'Advisee')
Role.create!(name: 'Admin')

# ID will vary but here it is: 21
User.destroy_all
user = User.new
user.email = 'admin@mail.com'
user.password = 'Test02'
user.password_confirmation = 'Test02'
user.role_ids = 1
user.save!

Topic.destroy_all
Topic.create!(user_id: 21,
              title: 'General',
              desc: 'This is where you can ask general advice from the Advisors in this site',
            )

Topic.create!(user_id: 21,
              title: 'Health',
              desc: 'This is where you can ask Health-related advice from the Advisors in this site',
            )
Topic.create!(user_id: 21,
              title: 'Wealth',
              desc: 'This is where you can ask Wealth-related advice from the Advisors in this site',
            )

Topic.create!(user_id: 21,
              title: 'Relationships',
              desc: 'This is where you can ask Relationship-related advice from the Advisors in this site',
            )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create a new User
UserRole.create(name: 'Guest')
User.create(user_role_id: 1, email: 'test@gmail.com', password: '1234567')
UserInfo.create(user_id: 1, firstname: 'Josh', lastname: 'Yan', profile: 'Hello, this is Josh Yan')

Category.create(name: 'Business', posts_count: 10)
Post.create(title: 'Hello World', content: 'Hello the test post.', user_id: 1, category_id: 1)

Tag.create(name: 'Business')
PostTagRef.create(tag_id: 1, post_id: 1)


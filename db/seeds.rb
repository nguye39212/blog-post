# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Jimmy',last_name: 'Nguyen', email: 'jimmynguyen1@att.net', password: 'password')
User.create(first_name: 'John', last_name: 'Nguyen', email: 'john@john.com', password: 'password')
User.create(first_name: 'michael', last_name: 'Nguyen', email: 'michael@michael.com', password: 'password')

Post.all.each do |post|
	post.comments.create(user_id: 1, content: "Wow! Thanks!")
	post.comments.create(user_id: 2, content: "this is pretty good!")

	Comment.create(post_id: post.id, user_id:1, content: 'I liked it comment again')
end


# content = "Beer Ipsum is perfect if you're searching for something a little more refreshing, and it's the ideal destination for delicious, malty ipsum text:
# Secondary fermentation degrees plato units of bitterness, cask conditioned ale ibu real ale pint glass craft beer. krausen goblet grainy ibu brewhouse lagering finishing hops. Trappist, black malt chocolate malt balthazar gravity dextrin saccharification trappist final gravity. Aau scotch ale, adjunct. hops bung infusion, cask conditioning pitching malt extract."


# 10.times do|i|
# Post.create(title: "my blog post", content: content)

# post1 = Post.find(1)
# post2 = Post.find(2)
# post3 = Post.find(3)
# post4 = Post.find(4)
# post5 = Post.find(5)
# post6 = Post.find(6)
# post7 = Post.find(7)
# post8 = Post.find(8)
# post9 = Post.find(9)
# post10 = Post.find(10)

# user1 = User.find(1)
# user2 = User.find(2)
# user3 = User.find(3)
# user4 = User.find(1)
# user5 = User.find(2)
# user6 = User.find(3)
# user7 = User.find(1)
# user8 = User.find(2)
# user9 = User.find(3)
# user10 = User.find(1)



# post1.user = user1
# post1.save

# post2.user = user2
# post2.save

# post3.user = user3
# post3.save

# post4.user = user1
# post4.save

# post5.user = user1
# post5.save

# post6.user = user1
# post6.save

# post7.user = user1
# post7.save

# post8.user = user1
# post8.save

# post9.user = user1
# post9.save

# post10.user = user1
# post10.save


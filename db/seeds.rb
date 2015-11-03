include RandomData

# Create Users
5.times do
  user = User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

<<<<<<< HEAD

 # Create Posts
 50.times do
 # #1
   Post.create!(
     user: users.sample,
     topic: topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
=======
50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end



admin = User.create!(
 name:     'Admin User',
 email:    'admin@example.com',
 password: 'helloworld',
 role:     'admin'
)
>>>>>>> master

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     user: users.sample,
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

<<<<<<< HEAD
 # Create an admin user
 admin = User.create!(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
=======
admin = User.create!(
   name:     'Moderator User',
   email:    'chefd4u@gmail.com',
   password: 'blklab12',
   role:     'moderator'
>>>>>>> master
 )

 # Create a member
 member = User.create!(
   name:     'Member User',
   email:    'member@example.com',
   password: 'helloworld'
 )


<<<<<<< HEAD
 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
=======
puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
>>>>>>> master

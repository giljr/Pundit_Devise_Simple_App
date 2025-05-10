puts "Seeding ..."
# Create Users
admin = User.create!(email: 'admin@example.com', password: 'password')
user  = User.create!(email: 'user@example.com', password: 'password')

# Assign roles using Rolify
admin.add_role :admin
user.add_role :user

# Create 10 posts
10.times do |i|
  Post.create!(
    title: "Post #{i + 1}",
    content: "This is the content for post #{i + 1}.",
    post_type: i < 5 ? :published : :unpublished
  )
end
puts "Seeding completed!"
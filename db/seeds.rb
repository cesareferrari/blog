# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: "cesare@hey.com").first_or_initialize
user.update!(
  password: "secret",
  password_confirmation: "secret"
)

100.times do |i|
  blog_post = BlogPost.where(title: "Blog Post #{i}").first_or_initialize
  blog_post.update(content: "Hello world #{i}", published_at: Time.current)
end

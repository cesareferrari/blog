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

post1 = BlogPost.where(title: "Hello world").first_or_initialize
post1.update!(
  body: "This is my first post"
)

post2 = BlogPost.where(title: "Snowing today").first_or_initialize
post2.update!(
  body: "Lorem enim magnam natus officia dolorum? Ratione dolore at aliquam quam praesentium Mollitia magni dolor distinctio impedit repudiandae. Minima perferendis minima autem molestias dolorem. Repudiandae sed reiciendis blanditiis sunt sint"
)

post3 = BlogPost.where(title: "This is the news").first_or_initialize
post3.update!(
  body: "Adipisicing est sed commodi ex voluptates sed Nam quasi unde saepe mollitia quaerat. Ipsum obcaecati consectetur eveniet natus optio Suscipit amet labore doloribus quisquam nihil, qui facere Vitae autem tempora!"
)

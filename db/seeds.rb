# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Book.delete_all

User.create!(
  username: 'guest',
  password: 'password'
)

Book.create!(
  title: 'Test Book1',
  author: 'John Authorman',
  description: 'A generic book',
  img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)


Book.create!(
  title: 'Test Book2',
  author: 'Barbara Authorman',
  description: 'A generic book',
  img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book3',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

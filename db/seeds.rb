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

Book.create!(
 title: 'Test Book4',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)


Book.create!(
 title: 'Test Book5',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book6',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book7',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book8',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book9',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book10',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book11',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

Book.create!(
 title: 'Test Book12',
 author: 'Billy Authorson',
 description: 'A generic book',
 img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
)

 Book.create!(
  title: 'Test Book13',
  author: 'Billy Authorson',
  description: 'A generic book',
  img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
 )

 Book.create!(
  title: 'Test Book14',
  author: 'Billy Authorson',
  description: 'A generic book',
  img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
 )

 Book.create!(
  title: 'Test Book15',
  author: 'Billy Authorson',
  description: 'A generic book',
  img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
 )

 Book.create!(
  title: 'Test Test Test Test Test Test Book18',
  author: 'Billy Authorson',
  description: 'Fusce quis sem tristique diam porta porttitor ac sed lectus. Fusce lorem metus, aliquet non est vitae, volutpat commodo ipsum. Cras et nisl urna. Cras tincidunt consectetur lorem eu condimentum. Sed ut mauris nec ex venenatis pulvinar. Sed sed lacus dui. Fusce sagittis, augue in consequat tincidunt, eros magna venenatis ligula, ac auctor sem turpis eget purus.',
  img_url: 'https://bookshoptalk.files.wordpress.com/2011/10/generic-book-cover.jpg?w=190'
 )

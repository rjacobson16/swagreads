class Book < ApplicationRecord
  validates :title, :author, :img_url, :description, presence: true

  has_many :shelvings,
    class_name: "Shelving",
    primary_key: :id,
    foreign_key: :book_id

    has_many :reviews,
      class_name: "Review",
      primary_key: :id,
      foreign_key: :book_id

    has_many :read_statuses,
     class_name: 'ReadStatus',
     primary_key: :id,
     foreign_key: :book_id

   has_many :bookshelves,
    through: :shelvings,
    source: :bookshelf

end

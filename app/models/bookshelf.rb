class Bookshelf < ApplicationRecord
  validates :name, :user_id, presence: true

  has_many :shelvings,
    class_name: "Shelving",
    primary_key: :id,
    foreign_key: :bookshelf_id

  belongs_to :user

  has_many :books,
    through: :shelvings,
    source: :book
end

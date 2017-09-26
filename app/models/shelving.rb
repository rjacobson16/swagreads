class Shelving < ApplicationRecord
  validates  :book_id, :bookshelf_id, presence: true
  validates :book_id, uniqueness: { scope: :bookshelf_id }

  belongs_to :book
  belongs_to :bookshelf
end

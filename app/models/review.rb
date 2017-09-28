class Review < ApplicationRecord
  validates :user_id, :book_id, :title, :body, :rating, presence: true
  validates_inclusion_of :rating, in: [1, 2,  3, 4, 5]
  validates :book_id, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :book


end

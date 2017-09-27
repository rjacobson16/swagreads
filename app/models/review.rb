class Review < ApplicationRecord
  validates :user_id, :book_id, :title, :body, presence: true

  belongs_to :user
  belongs_to :book

  
end

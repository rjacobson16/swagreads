class ReadStatus < ApplicationRecord
  validates :user_id, :book_id, :status, presence: true;
  validates :book_id, uniqueness: { scope: :user_id }
  validates_inclusion_of :status, in: %w(read currently reading want-to-read unread)

  belongs_to :book
  belongs_to :user
end

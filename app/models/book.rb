class Book < ApplicationRecord
  validates :title, :author, :img_url, :description, presence: true 
end

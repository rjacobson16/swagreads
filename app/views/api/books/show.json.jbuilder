json.extract! @book, :id, :title, :author, :description
json.review_ids @book.reviews.pluck(:id)
json.image_url asset_path(@book.img_url)

json.extract! @bookshelf, :id, :name
json.book_ids @bookshelf.books.pluck(:id)

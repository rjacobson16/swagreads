@bookshelves.each do |bookshelf|
  json.set! bookshelf.id do
    json.extract! bookshelf, :id, :name
    json.book_ids bookshelf.books.pluck(:id)
    json.set! :books, []
  end
end

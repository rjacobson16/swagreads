export const fetchAllBookshelves = () => (
  $.ajax({
    method: 'GET',
    url: 'api/bookshelves'
  })
);

export const fetchBookshelf = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/bookshelves/${id}`
  })
);

export const createBookshelf = (bookshelf) => (
  $.ajax({
    method: 'POST',
    url:'api/bookshelves',
    data: { bookshelf }
  })
);

export const deleteBookshelf = (id) => (
  $.ajax({
    method: 'DELETE',
    url: `api/bookshelves/${id}`
  })
);

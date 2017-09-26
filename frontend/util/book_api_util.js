export const fetchAllBooks = () => (
  $.ajax({
    method: 'GET',
    url: 'api/books'
  })
);

export const fetchBook = (id) => (
  $.ajax({
    method: 'GET',
    url: `api/books/${id}`
  })
);

export const addBookToBookshelf = (shelving) => (
  $.ajax({
    method: 'POST',
    url: `api/shelvings`,
    data: {shelving}
  })
);

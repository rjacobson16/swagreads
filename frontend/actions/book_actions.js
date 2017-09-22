import * as ApiUtil from '../util/book_api_util';

export const RECEIVE_ALL_BOOKS = 'RECEIVE_ALL_BOOKS';
export const RECEIVE_BOOK = 'RECEIVE_BOOK';

export const fetchAllBooks = () => dispatch => (
  ApiUtil.fetchAllBooks().then(books => dispatch(receiveAllBooks(books)))
);

export const fetchSingleBook = (id) => dispatch => (
  ApiUtil.fetchBook(id).then(book => dispatch(receiveBook(book)))
);



const receiveAllBooks = books => ({
  type: RECEIVE_ALL_BOOKS,
  books
});

const receiveBook = book => ({
  type: RECEIVE_BOOK,
  book
});

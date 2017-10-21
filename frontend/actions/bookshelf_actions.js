import * as ApiUtil from '../util/bookshelf_api_util';

export const RECEIVE_ALL_BOOKSHELVES = 'RECEIVE_ALL_BOOKSHELVES';
export const RECEIVE_BOOKSHELF = 'RECEIVE_BOOKSHELF';
export const RECEIVE_BOOKSHELF_ERRORS = 'RECEIVE_BOOKSHELF_ERRORS';
export const REMOVE_BOOKSHELF = 'REMOVE_BOOKSHELF';
export const RECEIVE_SHELVED_BOOK = 'RECEIVE_SHELVED_BOOK';
export const REMOVE_SHELVED_BOOK = 'REMOVE_SHELVED_BOOK';
export const RECEIVE_SHELVING_ERRORS = 'RECEIVE_SHELVING_ERRORS';


export const fetchAllBookshelves = () => dispatch => (
  ApiUtil.fetchAllBookshelves().then(bookshelves => dispatch(receiveAllBookshelves(bookshelves)))
);

export const fetchSingleBookshelf = (id) => dispatch => (
  ApiUtil.fetchBookshelf(id).then(bookshelf => dispatch(receiveBookshelf(bookshelf)))
);

export const createBookshelf = (bookshelf) => dispatch => (
  ApiUtil.createBookshelf(bookshelf).then(bookshelf => dispatch(receiveBookshelf(bookshelf)),
    (error) => dispatch(receiveBookshelfErrors(error.responseJSON)))
);

export const deleteBookshelf = (id) => dispatch => (
  ApiUtil.deleteBookshelf(id).then(bookshelf => dispatch(removeBookshelf(bookshelf)))
);

export const addBookToBookshelf = (shelving) => dispatch => (
  ApiUtil.addBookToBookshelf(shelving).then(shelving => dispatch(receiveShelvedBook(shelving)),
  (error) => dispatch(receiveShelvingErrors(error.responseJSON)))
);

export const deleteBookFromBookshelf = (shelving) => dispatch =>  (
  ApiUtil.deleteBookFromBookshelf(shelving).then(shelving => dispatch(removeShelvedBook(shelving)),
  (error) => console.log('FUCK'))
);

const receiveShelvedBook = (shelving) => ({
  type: RECEIVE_SHELVED_BOOK,
  shelving
});

const removeShelvedBook = (shelving) => ({
  type: REMOVE_SHELVED_BOOK,
  shelving
});

const receiveShelvingErrors = errors => ({
  type: RECEIVE_SHELVING_ERRORS,
  errors
});

const receiveAllBookshelves = bookshelves => ({
  type: RECEIVE_ALL_BOOKSHELVES,
  bookshelves
});

const receiveBookshelf= bookshelf => ({
  type: RECEIVE_BOOKSHELF,
  bookshelf
});

const receiveBookshelfErrors = errors => ({
  type: RECEIVE_BOOKSHELF_ERRORS,
  errors
});

const removeBookshelf = bookshelf => ({
  type: REMOVE_BOOKSHELF,
  bookshelf
});

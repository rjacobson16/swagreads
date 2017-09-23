import merge from 'lodash/merge';

import {
  RECEIVE_ALL_BOOKS,
  RECEIVE_BOOK
} from '../actions/book_actions';

const BooksReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_BOOKS:
      return merge({}, state, action.books);
    case RECEIVE_BOOK:
      return merge({}, state, {[action.book.id]: action.book});
    default:
      return state;
  }
};

export default BooksReducer;

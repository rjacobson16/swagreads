import merge from 'lodash/merge';

import {
  RECEIVE_ALL_BOOKSHELVES,
  RECEIVE_BOOKSHELF,
  REMOVE_BOOKSHELF
} from '../actions/bookshelf_actions';

const BookshelvesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_BOOKSHELVES:
      return merge({}, state, action.bookshelves);
    case RECEIVE_BOOKSHELF:
      return merge({}, state, {[action.bookshelf.id]: action.bookshelf});
    case REMOVE_BOOKSHELF:
      let newState = Object.assign({}, state);
      delete newState[action.bookshelf.id];
      return newState;
    default:
      return state;
  }
};

export default BookshelvesReducer;

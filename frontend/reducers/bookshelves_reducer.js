import merge from 'lodash/merge';

import {
  RECEIVE_ALL_BOOKSHELVES,
  RECEIVE_BOOKSHELF,
  REMOVE_BOOKSHELF,
  RECEIVE_SHELVED_BOOK,
  REMOVE_SHELVED_BOOK} from '../actions/bookshelf_actions';

  import {RECEIVE_CURRENT_USER} from '../actions/session_actions';

const BookshelvesReducer = (state = {}, action) => {
  let newState;
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_BOOKSHELVES:
      return merge({}, state, action.bookshelves);
    case RECEIVE_BOOKSHELF:
      return merge({}, state, {[action.bookshelf.id]: action.bookshelf});
    case REMOVE_BOOKSHELF:
      newState = Object.assign({}, state);
      delete newState[action.bookshelf.id];
      return newState;
    case RECEIVE_CURRENT_USER:
      return {};
    case RECEIVE_SHELVED_BOOK:
       console.log('HELLO NURSE');
       return merge({}, state, {[action.shelving.id]: action.shelving});
    case REMOVE_SHELVED_BOOK:
      newState = Object.assign({}, state);
      newState[action.shelving.bookshelf_id][book_ids] = "HELLO";
    default:
      return state;
  }
};

export default BookshelvesReducer;

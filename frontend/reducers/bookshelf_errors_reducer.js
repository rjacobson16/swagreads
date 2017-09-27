import {RECEIVE_BOOKSHELF,
        RECEIVE_BOOKSHELF_ERRORS,
        RECEIVE_SHELVING_ERRORS,
        RECEIVE_SHELVED_BOOK } from '../actions/bookshelf_actions';
import merge from 'lodash/merge';


const BookshelfErrorsReducer = (state =  [], action) => {
  Object.freeze(state);
  let errors;
  switch(action.type){

    case RECEIVE_BOOKSHELF_ERRORS:
      errors = action.errors;
      return merge([], [errors] );
    case RECEIVE_SHELVING_ERRORS:
      errors = action.errors;
      return merge([], [errors] );
    case RECEIVE_BOOKSHELF:
      return [];
    case RECEIVE_SHELVED_BOOK:
      return [];
    default:
      return state;
  }
};

export default BookshelfErrorsReducer;

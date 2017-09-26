import {RECEIVE_BOOKSHELF, RECEIVE_BOOKSHELF_ERRORS} from '../actions/bookshelf_actions';
import merge from 'lodash/merge';


const BookshelfErrorsReducer = (state =  [], action) => {
  Object.freeze(state);

  switch(action.type){
    case RECEIVE_BOOKSHELF_ERRORS:
      let errors = action.errors;
      return merge([], [errors] );
    case RECEIVE_BOOKSHELF:
      return [];
    default:
      return state;
  }
};

export default BookshelfErrorsReducer;

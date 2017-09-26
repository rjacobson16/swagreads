import { combineReducers } from 'redux';

import SessionErrorsReducer from './session_errors_reducer';
import BookshelfErrorsReducer from './bookshelf_errors_reducer';

const ErrorsReducer = combineReducers(
  {session: SessionErrorsReducer},
  {bookshelf: BookshelfErrorsReducer}
);

export default ErrorsReducer;

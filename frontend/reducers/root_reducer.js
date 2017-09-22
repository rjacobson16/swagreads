import { combineReducers } from 'redux';
import ErrorsReducer from './errors_reducer';
import SessionReducer from './session_reducer';
import BooksReducer from './books_reducer';

const RootReducer = combineReducers(
  {session: SessionReducer,
   errors: ErrorsReducer,
   books: BooksReducer}
);

export default RootReducer;

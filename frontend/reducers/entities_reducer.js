import { combineReducers } from 'redux';

import BooksReducer from './books_reducer';
import BookshelvesReducer from './bookshelves_reducer';

const EntitiesReducer = combineReducers(
  {books: BooksReducer,
  bookshelves: BookshelvesReducer}
);

export default EntitiesReducer;

import { combineReducers } from 'redux';

import BooksReducer from './books_reducer';
import BookshelvesReducer from './bookshelves_reducer';
import ReviewsReducer from './reviews_reducer';
import allUserReviewsReducer from './all_user_reviews_reducer';

const EntitiesReducer = combineReducers(
  {books: BooksReducer,
  bookshelves: BookshelvesReducer,
  reviews: ReviewsReducer,
  allUserReviews: allUserReviewsReducer}
);

export default EntitiesReducer;

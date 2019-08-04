import merge from "lodash/merge";

import {
  RECEIVE_ALL_REVIEWS,
  RECEIVE_REVIEW,
  REMOVE_REVIEW,
  RECEIVE_EVERY_USER_REVIEWS
} from "../actions/review_actions";

const ReviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_REVIEWS:
      return merge({}, state, action.myReviews);
    case RECEIVE_REVIEW:
      return merge({}, state, { [action.review.id]: action.review });
    case REMOVE_REVIEW:
      let newState = Object.assign({}, state);
      delete newState[action.review.id];
      return newState;
    default:
      return state;
  }
};

export default ReviewsReducer;

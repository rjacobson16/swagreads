import merge from 'lodash/merge';

import {
  RECEIVE_EVERY_USER_REVIEWS,
} from '../actions/review_actions';

const allUserReviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_EVERY_USER_REVIEWS:
      return merge({}, state, action.reviews);
    default:
      return state;
  }
};

export default allUserReviewsReducer;

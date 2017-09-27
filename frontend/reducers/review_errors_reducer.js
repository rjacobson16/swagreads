import {RECEIVE_REVIEW, RECEIVE_REVIEW_ERRORS} from '../actions/review_actions';
import merge from 'lodash/merge';


const ReviewErrorsReducer = (state =  [], action) => {
  Object.freeze(state);

  switch(action.type){
    case RECEIVE_REVIEW_ERRORS:
      let errors = action.errors;
      return merge([], [errors] );
    case RECEIVE_REVIEW:
      return [];
    default:
      return state;
  }
};

export default ReviewErrorsReducer;

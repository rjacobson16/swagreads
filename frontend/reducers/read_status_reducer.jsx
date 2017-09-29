import merge from 'lodash/merge';

import {
  RECEIVE_ALL_READ_STATUSES,
  RECEIVE_READ_STATUS,
} from '../actions/read_status_actions';

const ReadStatusesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_READ_STATUSES:

      return merge({}, state, action.read_statuses);
    case RECEIVE_READ_STATUS:
      return merge({}, state, {[action.read_status.id]: action.read_status});
    default:
      return state;
  }
};

export default ReadStatusesReducer;

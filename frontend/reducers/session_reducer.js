import merge from 'lodash/merge';
import {RECEIVE_CURRENT_USER} from '../actions/session_actions';


const _defaultState = {
  currentUser: null
};


const SessionReducer = (state = _defaultState, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      let currentUser = action.currentUser;
      return merge({}, { currentUser });
    default:
      return state;
  }
};

export default SessionReducer;

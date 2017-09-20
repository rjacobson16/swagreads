import * as ApiUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';

export const login = user => dispatch => (
  ApiUtil.login(user).then(user => dispatch(receiveCurrentUser(user))),
    (error) => dispatch(receiveSessionErrors(error.responseJSON))
);

export const signup = user => dispatch => (
  ApiUtil.signup(user).then(user => dispatch(receiveCurrentUser(user))),
  (error) => dispatch(receiveSessionErrors(error.responseJSON))
);

export const logout = () => dispatch => (
  ApiUtil.logout().then(user => dispatch(receiveCurrentUser(null)))
);

const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

const receiveSessionErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});

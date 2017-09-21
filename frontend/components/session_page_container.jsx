import { connect } from 'react-redux';
import { logout, login, signup } from '../actions/session_actions';

import SessionPage from './session_page';

const mapStateToProps = (state) => ({
  errors: state.errors.session
});

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user)),
  signup: user => dispatch(signup(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionPage);

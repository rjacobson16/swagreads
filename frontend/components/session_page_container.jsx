import { connect } from 'react-redux';
import { logout, login, signup } from '../actions/session_actions';

import SessionPage from './session_page';

const mapStateToProps = () => ({
  session_page_state: {}
});

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user)),
  signup: user => dispatch(signup(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SessionPage);

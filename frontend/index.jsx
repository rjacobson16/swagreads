import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import {login, signup, logout} from './actions/session_actions';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();


  window.store = store;
  window.getState = store.getState;
  window.dispatch = store.dispatch;

  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome to Swagreads</h1>, root);
});

window.logout = logout;
window.login = login;
window.signup = signup;

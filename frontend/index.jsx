import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {createReadStatus,
        fetchAllReadStatuses} from './actions/read_status_actions';

import * as ApiUtil from './util/read_status_api_util';



document.addEventListener('DOMContentLoaded', () => {
  let store;
   if (window.currentUser) {
     const preloadedState = { session: { currentUser: window.currentUser } };
     store = configureStore(preloadedState);
     delete window.currentUser;
   } else {
     store = configureStore();
   }

   window.getState = store.getState;
   window.dispatch = store.dispatch;

   window.createReadStatus = createReadStatus;
   window.fetchAllReadStatuses = ApiUtil.fetchAllReadStatuses;


   const root = document.getElementById('root');
   ReactDOM.render(<Root store={store}/>, root);
});

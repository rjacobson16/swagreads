import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchAllReviews,
        fetchEveryUserReviews,
        fetchReview,
        fetchSingleReview,
        createReview,
        updateReview,
        deleteReview} from './actions/review_actions';

import * as ApiUtil from './util/review_api_util';



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

   window.fetchEveryUserReviews = ApiUtil.fetchEveryUserReviews;
   window.fetchSingleReview = fetchSingleReview,
   window.createReview = createReview;
   window.deleteReview = deleteReview;


   const root = document.getElementById('root');
   ReactDOM.render(<Root store={store}/>, root);
});

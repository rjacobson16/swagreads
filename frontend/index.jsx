import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchAllReviews,
        fetchReview,
        fetchSingleReview,
        createReview,
        updateReview,
        deleteReview} from './actions/review_actions';


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

   window.fetchAllReviews = fetchAllReviews;
   window.fetchSingleReview = fetchSingleReview,
   window.createReview = createReview;
   window.deleteReview = deleteReview;


   const root = document.getElementById('root');
   ReactDOM.render(<Root store={store}/>, root);
});

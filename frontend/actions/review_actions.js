import * as ApiUtil from '../util/review_api_util';

export const RECEIVE_ALL_REVIEWS = 'RECEIVE_ALL_REVIEWS';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';
export const RECEIVE_EVERY_USER_REVIEWS = 'RECEIVE_EVERY_USER_REVIEWS';


export const fetchAllReviews = () => dispatch => (
  ApiUtil.fetchAllReviews().then(reviews => dispatch(receiveAllReviews(reviews)))
);

export const fetchEveryUserReviews = () => dispatch => (
  ApiUtil.fetchEveryUserReviews().then(reviews => dispatch(receiveEveryUserReviews(reviews)))
);

export const fetchSingleReview = (id) => dispatch => (
  ApiUtil.fetchReview(id).then(review => dispatch(receiveReview(review)))
);

export const createReview = (review) => dispatch => (
  ApiUtil.createReview(review).then(review => dispatch(receiveReview(review)),
    (error) => dispatch(receiveReviewErrors(error.responseJSON)))
);

export const updateReview = (review) => dispatch => (
  ApiUtil.updateReview(review).then(review => dispatch(receiveReview(review)),
    (error) => dispatch(receiveReviewErrors(error.responseJSON)))
);

export const deleteReview = (id) => dispatch => (
  ApiUtil.deleteReview(id).then()
);
const receiveEveryUserReviews = reviews => ({
  type: RECEIVE_EVERY_USER_REVIEWS,
  reviews
});

const receiveAllReviews = reviews => ({
  type: RECEIVE_ALL_REVIEWS,
  reviews
});

const receiveReview = review => ({
  type: RECEIVE_REVIEW,
  review
});

const receiveReviewErrors = errors => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors
});

const removeReview = reviews => ({
  type: REMOVE_REVIEW,
  reviews
});

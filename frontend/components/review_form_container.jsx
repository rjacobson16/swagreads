import { connect } from 'react-redux';
import ReviewForm from './review_form';
import { createReview, fetchAllReviews} from '../actions/review_actions';

import {fetchAllBooks} from '../actions/book_actions';

const mapStateToProps = (state, ownProps) => ({
  current_user: state.session.currentUser,
  reviews: state.entities.reviews
});

const mapDispatchToProps = dispatch => ({
  createReview: review => dispatch(createReview(review)),
  fetchAllBooks: () => dispatch(fetchAllBooks()),
  fetchAllReviews: () => dispatch(fetchAllReviews())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReviewForm);

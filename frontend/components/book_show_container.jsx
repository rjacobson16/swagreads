import { connect } from 'react-redux';
import BookShow from './book_show';
import { fetchSingleBook } from '../actions/book_actions';

const mapStateToProps = (state, ownProps) => ({
  book: state.entities.books[ownProps.match.params.bookId]
});

const mapDispatchToProps = dispatch => ({
  fetchSingleBook: id => dispatch(fetchSingleBook(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookShow);

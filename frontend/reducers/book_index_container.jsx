import {connect} from 'react-redux';
import {fetchAllBooks}  from './actions/book_actions';
import BookIndex from './book_index';

const mapStateToProps = state => ({
  books: Object.keys(state.books).map(id => state.books[id])
});

const mapDispatchToProps = dispatch => ({
  fetchAllBooks: () => dispatch(fetchAllBooks())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookIndex);

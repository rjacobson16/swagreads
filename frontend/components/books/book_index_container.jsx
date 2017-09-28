import {connect} from 'react-redux';
import {fetchAllBooks}  from '../../actions/book_actions';
import {fetchAllBookshelves}  from '../../actions/bookshelf_actions';
import BookIndex from './book_index';

const mapStateToProps = state => ({
  books: Object.keys(state.entities.books).map(id => state.entities.books[id])
});

const mapDispatchToProps = dispatch => ({
  fetchAllBooks: () => dispatch(fetchAllBooks()),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookIndex);

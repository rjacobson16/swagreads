import {connect} from 'react-redux';
import {deleteBookFromBookshelf,
        fetchAllBookshelves}  from '../actions/bookshelf_actions';
import BookshelfIndexItem from './bookshelf_index_item';

const mapStateToProps = (state, ownProps) => ({
  bookshelf: ownProps.bookshelf,
  books: ownProps.books
});

const mapDispatchToProps = dispatch => ({
  deleteBookFromBookshelf: (shelving) => dispatch(deleteBookFromBookshelf(shelving)),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookshelfIndexItem);

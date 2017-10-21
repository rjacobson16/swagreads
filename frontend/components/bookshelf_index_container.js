import {connect} from 'react-redux';
import {fetchAllBooks}  from '../actions/book_actions';
import {fetchAllBookshelves,
        createBookshelf,
        deleteBookshelf,
        deleteBookFromBookshelf}  from '../actions/bookshelf_actions';
import BookshelfIndex from './bookshelf_index';


const mapStateToProps = state => ({
  bookshelves: Object.keys(state.entities.bookshelves).map(id => state.entities.bookshelves[id]),
  books: state.entities.books
});

const mapDispatchToProps = dispatch => ({

  fetchAllBooks: () => dispatch(fetchAllBooks()),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookshelfIndex);

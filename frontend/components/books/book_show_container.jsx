import { connect } from 'react-redux';
import BookShow from './book_show';
import { fetchSingleBook } from '../../actions/book_actions';
import {addBookToBookshelf} from '../../actions/bookshelf_actions';
import {fetchAllBookshelves} from '../../actions/bookshelf_actions';

const mapStateToProps = (state, ownProps) => ({
  book: state.entities.books[ownProps.match.params.bookId]
});

const mapDispatchToProps = dispatch => ({
  fetchSingleBook: id => dispatch(fetchSingleBook(id)),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves()),
  addBookToBookshelf: shelving => dispatch(addBookToBookshelf(shelving))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookShow);

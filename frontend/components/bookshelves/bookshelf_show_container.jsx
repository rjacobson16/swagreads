import { connect } from "react-redux";
import BookshelfShow from "./bookshelf_show";
import { fetchAllBooks } from "../../actions/book_actions";
import { fetchAllBookshelves } from "../../actions/bookshelf_actions";

const mapStateToProps = (state, ownProps) => ({
  bookshelf: state.entities.bookshelves[ownProps.match.params.bookshelfId],
  books: state.entities.books
});

const mapDispatchToProps = dispatch => ({
  fetchAllBooks: () => dispatch(fetchAllBooks()),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookshelfShow);

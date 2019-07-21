import { connect } from "react-redux";
import { fetchAllBooks } from "../../actions/book_actions";
import { fetchAllBookshelves } from "../../actions/bookshelf_actions";
import HomePage from "./home_page";

const mapStateToProps = state => ({
  books: Object.keys(state.entities.books).map(id => state.entities.books[id]),
  bookshelves: Object.keys(state.entities.bookshelves).map(
    id => state.entities.bookshelves[id]
  )
});

const mapDispatchToProps = dispatch => ({
  fetchAllBooks: () => dispatch(fetchAllBooks()),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);

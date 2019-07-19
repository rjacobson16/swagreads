import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import { addBookToBookshelf } from "../../actions/bookshelf_actions";
import { fetchAllBookshelves } from "../../actions/bookshelf_actions";
import ShelveBook from "./shelve_book";

const mapStateToProps = (state, ownProps) => ({
  book: state.entities.books[ownProps.match.params.bookId],

  bookshelves: Object.values(state.entities.bookshelves)
});

const mapDispatchToProps = dispatch => ({
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves()),
  addBookToBookshelf: shelving => dispatch(addBookToBookshelf(shelving))
});

export default withRouter(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(ShelveBook)
);

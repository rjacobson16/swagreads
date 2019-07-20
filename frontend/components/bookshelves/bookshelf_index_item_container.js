import { connect } from "react-redux";
import {
  deleteBookFromBookshelf,
  fetchAllBookshelves
} from "../../actions/bookshelf_actions";
import BookshelfIndexItem from "./bookshelf_index_item";
import { selectBookshelfBooks } from "../../store/selectors";

function mapStateToProps(state, ownProps) {
  console.log("***", state);
  return {
    bookshelf: state.entities.bookshelves[ownProps.bookshelf.id],
    books: selectBookshelfBooks(state, ownProps.bookshelf.id)
  };
}

const mapDispatchToProps = dispatch => ({
  deleteBookFromBookshelf: shelving =>
    dispatch(deleteBookFromBookshelf(shelving)),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(BookshelfIndexItem);

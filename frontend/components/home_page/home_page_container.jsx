import { connect } from "react-redux";
import { fetchAllBooks } from "../../actions/book_actions";
import { fetchAllBookshelves } from "../../actions/bookshelf_actions";
import { fetchEveryUserReviews } from "../../actions/review_actions";
import HomePage from "./home_page";

const mapStateToProps = state => ({
  allReviews: state.entities.reviews,
  allBooks: Object.keys(state.entities.books).map(id => {
    return { ...state.entities.books[id], allUserReviews: [] };
  }),
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

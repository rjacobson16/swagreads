import { connect } from "react-redux";
import _ from "lodash";

import { fetchAllBooks } from "../../actions/book_actions";
import { fetchAllBookshelves } from "../../actions/bookshelf_actions";
import { fetchEveryUserReviews } from "../../actions/review_actions";
import HomePage from "./home_page";

const mapStateToProps = state => ({
  allBooks: Object.keys(state.entities.books).map(id => {
    return {
      ...state.entities.books[id],
      allUserReviews: _.filter(state.entities.allUserReviews, review => {
        return _.includes(state.entities.books[id].review_ids, review.id);
      })
    };
  }),
  bookshelves: Object.keys(state.entities.bookshelves).map(
    id => state.entities.bookshelves[id]
  )
});

const mapDispatchToProps = dispatch => ({
  fetchAllBooks: () => dispatch(fetchAllBooks()),
  fetchAllBookshelves: () => dispatch(fetchAllBookshelves()),
  fetchEveryUserReviews: () => dispatch(fetchEveryUserReviews())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HomePage);

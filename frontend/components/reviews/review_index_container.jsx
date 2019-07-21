import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import { fetchEveryUserReviews } from "../../actions/review_actions";
import { fetchSingleBook } from "../../actions/book_actions";
import ReviewIndex from "./review_index.jsx";

const mapStateToProps = (state, ownProps) => ({
  reviews: state.entities.allUserReviews
});

const mapDispatchToProps = dispatch => ({
  fetchEveryUserReviews: () => dispatch(fetchEveryUserReviews()),
  fetchSingleBook: id => dispatch(fetchSingleBook(id))
});

export default withRouter(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(ReviewIndex)
);

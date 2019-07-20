import { connect } from "react-redux";
import CreateBookshelfForm from "./create_bookshelf_form";
import { createBookshelf } from "../../actions/bookshelf_actions";

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  createBookshelf: bookshelf => dispatch(createBookshelf(bookshelf))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CreateBookshelfForm);

import React from "react";
// import BookIndexItem from "./book_index_item";

class HomePage extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    this.props.fetchAllBooks();
    this.props.fetchAllBookshelves();
  }
  render() {
    console.log(this.props);
    return (
      <div>
        <h2>Browse all books</h2>
        <ul className="book-index">
          {/* {this.props.books.map(book => console.log(book))} */}
        </ul>
      </div>
    );
  }
}

export default HomePage;

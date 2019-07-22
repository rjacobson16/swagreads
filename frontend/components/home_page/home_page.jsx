import React from "react";
import ShelfControls from "./shelf_controls/shelf_controls";
console.log(ShelfControls);
// import BookIndexItem from "./book_index_item";

class HomePage extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      activeShelf: "all"
    };
  }

  componentDidMount() {
    this.props.fetchAllBooks();
    this.props.fetchAllBookshelves();
  }

  setActiveShelf(shelfName) {
    this.setState({
      activeShelf: shelfName
    });
  }

  render() {
    // eslint-disable-next-line no-debugger
    // debugger;
    let allShelves = [
      ...this.props.bookshelves,
      { name: "all", books: this.books }
    ];
    return (
      <div>
        <ShelfControls
          selectedShelf={this.state.activeShelf}
          bookshelves={allShelves}
        />
        <ul className="book-index">
          {/* {this.props.books.map(book => console.log(book))} */}
        </ul>
      </div>
    );
  }
}

export default HomePage;

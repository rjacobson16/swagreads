import React from "react";
import ShelfControls from "./shelf_controls/shelf_controls";
import BookList from "./book_list/book_list";
import "./home_page.scss";

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

  // getActiveShelf() {
  //   return
  // }

  render() {
    console.log("home Page Props", this.props);
    // eslint-disable-next-line no-debugger
    // debugger;
    let allShelves = [
      ...this.props.bookshelves,
      { name: "all", books: this.allBooks }
    ];
    return (
      <section className="home-page-container">
        <ShelfControls
          selectedShelf={this.state.activeShelf}
          bookshelves={allShelves}
        />
        <BookList books={this.props.allBooks} />
      </section>
    );
  }
}

export default HomePage;

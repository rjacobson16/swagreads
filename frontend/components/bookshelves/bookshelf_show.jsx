import React from 'react';
import { Link } from 'react-router-dom';

class BookshelfShow extends React.Component {
  componentDidMount() {
    this.props.fetchAllBooks();
    this.props.fetchAllBookshelves();
  }


  render () {
    const bookshelf = this.props.bookshelf;
    const books = this.props.books;
    if (!bookshelf || !books ) {
      return <div>Loading...</div>;
    }



    return (
      <div className='bookshelf-show-container'>

        <h2>{bookshelf.name}</h2>
          <ul >
            {
              bookshelf.book_ids.map((id) => (
                <li key={id}>
                  {books[id].title}
                  <img src={books[id].image_url}></img>
                </li>
              ))
            }
          </ul>
      </div>
    );
  }
}

export default BookshelfShow;

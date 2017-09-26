import React from 'react';
import BookshelfIndexItem from './bookshelf_index_item';
import ReactDOM from 'react-dom';

class BookshelfIndex extends React.Component {
  constructor(props){
    super(props);
  }
  componentDidMount() {
    this.props.fetchAllBooks();
    this.props.fetchAllBookshelves();
  }
  render () {
    return (
      <div>
        <h2>Browse all bookshelves</h2>
        <ul className='bookshelf-index'>
          {
            this.props.bookshelves.map(bookshelf => (
              <BookshelfIndexItem
                key={bookshelf.id}
                books = {this.props.books}
                bookshelf={bookshelf} />
            ))
          }
        </ul>
      </div>
    );
  }

}

export default BookshelfIndex;

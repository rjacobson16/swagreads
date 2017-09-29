import React from 'react';
import BookshelfIndexItem from './bookshelf_index_item';
import ReactDOM from 'react-dom';
import CreateBookshelfFormContainer from './create_bookshelf_form_container';

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
      <div className='bookshelf-index-container'>
        <ul className='bookshelf-index'>
          <h2>Browse all bookshelves</h2>
          <CreateBookshelfFormContainer className='add-bookshelf' />
          {
            this.props.bookshelves.slice().reverse().map(bookshelf => (
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

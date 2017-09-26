import React from 'react';
import { Link } from 'react-router-dom';

class BookShow extends React.Component {
  componentDidMount() {
    this.props.fetchSingleBook(this.props.match.params.bookId);
  }


  render () {
    const book = this.props.book;
    if (!book) {
      return <div>Loading...</div>;
    }

    return (
      <div className='book-show-container'>

        <div className='book-show-image'>

          <h2 className='book-show-title'>{book.title}</h2>
          <img  src={book.image_url}/>
        </div>

        <div className='book-show-info'>
          <p className='book-show-author'>{book.author}</p>
          <p className='book-show-desc'>{book.description}</p>
          <Link className='book-show-idx-link'to="/books">Back to Index</Link>
        </div>


      </div>
    );
  }
}

export default BookShow;

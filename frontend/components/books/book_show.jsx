import React from 'react';
import { Link } from 'react-router-dom';
import ShelveBookContainer from '../shelve_book_container';
import ReviewFormContainer from '../review_form_container';
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
        <h2 className='book-show-title'>{book.title}</h2>
      <div className='book-show-details'>
        <div className='book-show-image'>
          <img  src={book.image_url}/>
        </div>
        <ReviewFormContainer className='review-form-container' book={book}/>
        <div className='book-show-info'>
          <p className='book-show-author'>{book.author}</p>
          <p className='book-show-desc'>{book.description}</p>
          <ShelveBookContainer className='dropdown' book={book} />
          <Link className='book-show-idx-link'to="/books">Back to Index</Link>
        </div>
      </div>


    </div>
    );
  }
}

export default BookShow;

import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const BookIndexItem = (props) => {
  return (
    <li>
      <Link to={`/books/${props.book.id}`}>
        {props.book.title}
      </Link>
      <Link to={`/books/${props.book.id}`}>
        <img src={`${props.book.image_url}`} />
      </Link>
    </li>);
};

export default withRouter(BookIndexItem);

import React from "react";

const BookIndexItem = ({ book }) => {
  let image_url = book.image_url;

  return (
    <li className="book_index_item">
      {image_url ? <img src={image_url} className="book_cover" /> : null}
      <div className="book_info">
        <div className="book_data">
          <h2 className="book_title">{book.title}</h2>
          <h4 className="author">Author: {book.author ? book.author : ""}</h4>
          {/* <h4 className="rating">Average Rating: {volumeInfo.averageRating}</h4> */}
        </div>
        <div className="book_description_container">
          {book.description ? (
            <p className="book_description">&quot;{book.description}&quot;</p>
          ) : null}
        </div>
      </div>
    </li>
  );
};

export default BookIndexItem;

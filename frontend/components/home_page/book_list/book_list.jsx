import React from "react";
import BookListItem from "./book_list_item";
import "./book_list.scss";

function BookList({ books }) {
  return (
    <ul className="book-list">
      {books.map(book => (
        <BookListItem key={book.id} book={book} />
      ))}
    </ul>
  );
}

export default BookList;

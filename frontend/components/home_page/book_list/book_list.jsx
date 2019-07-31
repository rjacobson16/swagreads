import React from "react";
import BookListItem from "./book_list_item";
import "./book_list.scss";

function BookList({ books }) {
  return (
    <section className="book-list-container">
      <ul className="book-list-header">
        <li>cover</li>
        <li>title</li>
        <li>author</li>
        <li>avg rating</li>
        <li>rating</li>
      </ul>
      <ul className="book-list">
        {books.map(book => (
          <BookListItem key={book.id} book={book} />
        ))}
      </ul>
    </section>
  );
}

export default BookList;

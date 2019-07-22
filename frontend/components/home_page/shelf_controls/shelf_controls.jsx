import React from "react";
import "./shelf_controls.scss";

const ShelfControls = props => (
  <div className="bookshelf-controls">
    <h2>My Books</h2>
    <h4>Bookshelves</h4>
    {props.bookshelves.map(shelf => (
      <p
        key={shelf.name}
        className={
          props.selectedShelf === shelf.name
            ? "selected bookshelf-control"
            : "bookshelf-control"
        }
      >
        {shelf.name}
      </p>
    ))}
  </div>
);

export default ShelfControls;

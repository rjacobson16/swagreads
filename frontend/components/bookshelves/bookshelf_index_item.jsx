import React from "react";
import { Link, withRouter } from "react-router-dom";
import {
  CarouselProvider,
  Slider,
  Slide,
  ButtonBack,
  ButtonNext,
  Image,
  Dot
} from "pure-react-carousel";
// import {deleteBookFromBookshelf} from '../actions/bookshelf_actions';
class BookshelfIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (this.props.books.length === 2) debugger;
    return (
      <div>
        <h3 className="shelf-title">{this.props.bookshelf.name}</h3>
        <CarouselProvider
          naturalSlideWidth={135}
          naturalSlideHeight={250}
          totalSlides={this.props.bookshelf.book_ids.length}
          visibleSlides={3}
        >
          <Slider
            style={{
              height: "240px",
              display: "flex",
              justifyContent: "space-between"
            }}
          >
            {this.props.bookshelf.book_ids.map((id, index) => (
              <Slide
                index={index}
                key={id}
                style={{
                  width: "150px",
                  display: "flex",
                  alignItems: "center",
                  margin: "0 50px"
                }}
                className="shelf_item"
              >
                <Link to={`/books/${id}`}>
                  <Image
                    style={{ height: "200px", width: "140px" }}
                    src={this.props.books[id].image_url}
                  />
                </Link>
                <button
                  className="delete_from_shelf"
                  style={{
                    height: "35px",
                    marginLeft: "55px",
                    marginTop: "5px"
                  }}
                  onClick={() =>
                    this.props.deleteBookFromBookshelf({
                      book_id: id,
                      bookshelf_id: this.props.bookshelf.id
                    })
                  }
                >
                  X
                </button>
              </Slide>
            ))}
          </Slider>
          <div className="slider-button-container">
            <ButtonBack className="slider-button">back</ButtonBack>
            <ButtonNext className="slider-button">next</ButtonNext>
          </div>
        </CarouselProvider>
      </div>
    );
  }
}

export default withRouter(BookshelfIndexItem);

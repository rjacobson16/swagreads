# [Swagreads](https://swagreads.herokuapp.com/#/)

![logo](https://user-images.githubusercontent.com/26705787/31037206-b411dafc-a524-11e7-8551-b0858c4ccb63.gif)

Swagreads is a full-stack, single-page book management application inspired by Goodreads. Users can create bookshelves, shelve books, write book reviews and mark books as read, unread, want-to-read, or currently reading. Swagreads consists of a PostgreSQL database, a Ruby on Rails backend and a React/Redux frontend. 

_________________________________

## Features and Implementation

### Bookshelves 

* Users can view bookshelves, browse all shelved books, and create new bookshelves directly from the bookshelf index page:
![add shelf](https://user-images.githubusercontent.com/26705787/31037219-c0d3ef14-a524-11e7-81f2-a3336ee8bdba.gif)
![shelve book](https://user-images.githubusercontent.com/26705787/31037213-b8768124-a524-11e7-867c-376c6871f80e.gif)

The bookshelf carousel feature is implemented using the [pure-react-carousel](https://www.npmjs.com/package/pure-react-carousel) library. The React component responsible for rendering the bookshelves is BookShelfIndex, which renders several BookshelfIndexItems, which in turn render `pure-react-carousel` `Slider` components, illustrated below:

```
...

render() {
    return(
      <div>
        <h3 className='shelf-title'>{this.props.bookshelf.name}</h3>
        <CarouselProvider
         naturalSlideWidth={135}
         naturalSlideHeight={200}
         totalSlides={this.props.bookshelf.book_ids.length}
         visibleSlides={3}>

           <Slider style={{height: '200px', display: 'flex', 'justifyContent': 'space-between'}}>
             {this.props.bookshelf.book_ids.map((id, index) =>(<Slide index={index} key={id} style={{'width': '150px', 'margin': '0 50px'}}>
               <Link to={`/books/${id}`}>
                 <Image style={{height: '200px', width: '140px'}} src ={this.props.books[id].image_url}></Image>
               </Link>
             </Slide>))}
           </Slider>
           <div className='slider-button-container'>
             <ButtonBack className='slider-button'>back</ButtonBack>
             <ButtonNext className='slider-button'>next</ButtonNext>
           </div>
       </CarouselProvider>
     </div>
   );
  }
}

export default withRouter(BookshelfIndexItem);
```

### Book Reviews

* Users can write book reviews using the book review form on the Book Show page. The component responsible for rendering the book review form is set to only render if the user hasn't already reviewed the current book: 

![add review](https://user-images.githubusercontent.com/26705787/31038375-4fda2600-a52b-11e7-85b3-2d202ff72be5.gif)

### Future Additions/Improvements

* Bookshelf Detail View: a show page for each individual bookshelf which allowing the user to edit the books in that shelf directly from the bookshelf page. 

* Book recommendations: an engine which generates book recommendations for each user based on their book ratings and the book ratings of similar users.

* Fix - usernames on comments: edit the review index item so that the username attached to the review's author_id is displayed.

import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import {CarouselProvider, Slider, Slide, ButtonBack, ButtonNext, Image, Dot} from 'pure-react-carousel';

class BookshelfIndexItem extends React.Component {

  constructor(props){
    super(props);
  }
  render() {
    return(
      <CarouselProvider
       naturalSlideWidth={135}
       naturalSlideHeight={200}
       totalSlides={this.props.bookshelf.book_ids.length}
       visibleSlides={3}
     >
       <Slider>
         {this.props.bookshelf.book_ids.map((id, index) =>(<Slide index={index}>
           <Image src ={this.props.books[id].image_url}></Image>
         </Slide>))}
       </Slider>
       <ButtonBack>Back</ButtonBack>
       <ButtonNext>next</ButtonNext>
     </CarouselProvider>
   );
  }
}

export default withRouter(BookshelfIndexItem);



// <li key={`${this.props.bookshelf.id}`} className='bookshelf-index-item'>
//   {<h3>{this.props.bookshelf.name}</h3>}
//   {this.props.bookshelf.book_ids.map(id => <p>{this.props.books[id].title}</p>)}
// </li>

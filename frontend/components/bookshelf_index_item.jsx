import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import {CarouselProvider, Slider, Slide, ButtonBack, ButtonNext, Image, Dot} from 'pure-react-carousel';

class BookshelfIndexItem extends React.Component {

  constructor(props){
    super(props);
  }
  render() {
    return(
      <div>
        <h3>{this.props.bookshelf.name}</h3>
        <CarouselProvider
         naturalSlideWidth={135}
         naturalSlideHeight={200}
         totalSlides={this.props.bookshelf.book_ids.length}
         visibleSlides={3}
       >
         <Slider style={{height: '200px', display: 'flex', 'justify-content': 'space-between'}}>
           {this.props.bookshelf.book_ids.map((id, index) =>(<Slide index={index} style={{'width': '150px', 'margin': '0 50px'}}>
             <Image style={{height: '200px', width: '140px'}} src ={this.props.books[id].image_url}></Image>
           </Slide>))}
         </Slider>
         <ButtonBack>Back</ButtonBack>
         <ButtonNext>next</ButtonNext>
       </CarouselProvider>
     </div>
   );
  }
}

export default withRouter(BookshelfIndexItem);

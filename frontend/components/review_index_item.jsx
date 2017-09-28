import React from 'react';
import ReactDOM from 'react-dom';

class ReviewIndexItem extends React.Component {
  constructor(props){
    super(props);
    this.ratingsDiv = this.ratingsDiv.bind(this);
  }

  ratingsDiv(){
    let htmlString = "<div class ='star-div'> ";
    for (let i = 0; i < this.props.review.rating; i++) {
      htmlString += "<div class='star-item'></div>";
     }
     htmlString += "</div>";
     return { __html: htmlString};
  }
  render(){

    if (this.props.review) {
      let rating = this.ratingsDiv();
      return (
        <div>
          <h2>{this.props.review.title}</h2>
          <div dangerouslySetInnerHTML={rating} />
          <br/>
          <p>{this.props.review.body}</p>
        </div>
      );
    } else {
      return null;
    }
  }
}

export default ReviewIndexItem;

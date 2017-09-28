import React from 'react';
import ReactDOM from 'react-dom';
import ReviewIndexItem from './review_index_item';

class ReviewIndex extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount() {
    this.props.fetchEveryUserReviews();
    this.props.fetchSingleBook(this.props.book.id);
  }

  render() {
    return (
      <div className='review-index-container'>
        <ul className='review-index'>
          {
            this.props.book.review_ids.map((id) => (
              <ReviewIndexItem review={this.props.reviews[id]}
                 />
              )
            )
          }
        </ul>
      </div>
    );
  }
}

export default ReviewIndex;

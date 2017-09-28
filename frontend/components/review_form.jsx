import React from 'react';

class ReviewForm extends React.Component {
  constructor(props){
    super(props);

    this.state = {title: '', rating: null, body: '',
                  book_id: this.props.book.id};
    this.update = this.update.bind(this);
    this.submitReview = this.submitReview.bind(this);
  }
  update(key) {
      return e => this.setState({
        [key]: e.currentTarget.value
      });
    }

  componentDidMount() {
    this.props.fetchAllBooks();
    this.props.fetchAllReviews();
  }

  submitReview(e) {
    e.preventDefault;
    console.log('SUBMIT');
    this.props.createReview(this.state);
  }



  render () {
    return (
      <div className='review-form-container'>
        <form className='review-form-box' onSubmit={this.submitReview}>
              <input type='text'
                 placeholder='Review Title'
                 value={this.state.title}
                 onChange={this.update('title')}
                 className='review-input'/>

               <fieldset className="rating">
                    <input type="radio" onChange={this.update('rating')} id="star5"
                      name="rating" value={5} /><label className = "full" htmlFor="star5" title="Awesome - 5 stars"></label>
                    <input type="radio" id="star4" onChange={this.update('rating')}
                      name="rating" value={4} /><label className = "full" htmlFor="star4" title="Pretty good - 4 stars"></label>
                    <input type="radio" id="star3" onChange={this.update('rating')}
                      name="rating" value={3} /><label className = "full" htmlFor="star3" title="Meh - 3 stars"></label>
                    <input type="radio" id="star2" onChange={this.update('rating')}
                      name="rating" value={2} /><label className = "full" htmlFor="star2" title="Kinda bad - 2 stars"></label>
                    <input type="radio" id="star1" onChange={this.update('rating')}
                      name="rating" value={1} /><label className = "full" htmlFor="star1" title="Sucks big time - 1 star"></label>
                  </fieldset>

               <textarea
                 placeholder='Review Body'
                 value={this.state.body}
                 onChange={this.update('body')}
                 className='review-input'/>

               <button>Submit</button>

        </form>
      </div>
    );
  }


}

export default ReviewForm;

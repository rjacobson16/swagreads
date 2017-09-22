import React from 'react';
import BookIndexContainer from './book_index_container';

class HomePage extends React.Component {
  constructor(props){
    super(props);

    this.logoutUser = this.logoutUser.bind(this);
  }

  logoutUser(e) {
      e.preventDefault();
      this.props.logout();
   }
  render () {
    return (
      <div>
        <h1>This is the Home Page</h1>
        <button onClick={this.logoutUser}>logout</button>
        <BookIndexContainer />
      </div>
    );
  }
}

export default HomePage;

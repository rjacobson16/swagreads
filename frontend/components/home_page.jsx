import React from 'react';

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
        <h2>This is the Home Page</h2>
        <button onClick={this.logoutUser}>logout</button>
      </div>
    );
  }
}

export default HomePage;

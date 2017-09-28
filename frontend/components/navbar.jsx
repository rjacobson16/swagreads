import React from 'react';
import { NavLink } from 'react-router-dom';

class NavBar extends React.Component {

  constructor(props){
    super(props);

    this.logoutUser = this.logoutUser.bind(this);

  }

  logoutUser(e) {
      e.preventDefault();
      this.props.logout();
   }

  render() {
    if (this.props.currentUser) {
      return (
        <div className='navbar'>

            <h1><span style={{'margin-left': '75px'}} className='Sparkle'>swag</span><b>reads</b></h1>

          <div>
            <NavLink  style={{'margin-right': '30px'}} to={`/bookshelves`}>My Bookshelves</NavLink>
            <NavLink to={`/books`}>Home</NavLink>
          </div>

          <h2>Hello, {this.props.currentUser.username}</h2>
          <button span style={{'margin-right': '40px'}} onClick={this.logoutUser}>Logout</button>
        </div>
      );
    } else {
      return (
        <div></div>
      );
    }
  }
}

export default NavBar;

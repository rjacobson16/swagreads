import React from "react";
import { NavLink } from "react-router-dom";

class NavBar extends React.Component {
  constructor(props) {
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
        <div className="navbar">
          <NavLink to={"/"}>
            <h1 className="logo">
              <span style={{ marginLeft: "75px" }} className="ultra-thin">
                swag
              </span>
              <b>reads</b>
            </h1>
          </NavLink>
          <div>
            <NavLink
              className="nav-link"
              style={{ marginRight: "30px" }}
              to={`/bookshelves`}
            >
              My Bookshelves
            </NavLink>
            <NavLink className="nav-link" to={`/books`}>
              Home
            </NavLink>
          </div>
          <div className="nav-session">
            <h2>Hi, {this.props.currentUser.username}!</h2>
            <button
              className="logout"
              span
              style={{ marginRight: "40px" }}
              onClick={this.logoutUser}
            >
              Logout
            </button>
          </div>
        </div>
      );
    } else {
      return <div />;
    }
  }
}

export default NavBar;

import React from "react";
import ReactHint from "react-hint";
import "./sessions.scss";

class SessionPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      signup: { username: "", password: "" },
      login: { username: "", password: "" },
      showMobileMask: false
    };

    this.loginExistingUser = this.loginExistingUser.bind(this);
    this.createNewUser = this.createNewUser.bind(this);
    this.demo = this.demo.bind(this);
    this.toggleMobileLoginMask = this.toggleMobileLoginMask.bind(this);
  }

  update(key, field) {
    let otherField = field === "username" ? "password" : "username";
    return e =>
      this.setState({
        [key]: {
          [field]: e.currentTarget.value,
          [otherField]: this.state[key][otherField]
        }
      });
  }

  demo() {
    const DEMO_USERS = [
      "guest1",
      "guest2",
      "guest3",
      "guest4",
      "guest5",
      "guest6",
      "guest7",
      "guest8"
    ];
    let randomUser = DEMO_USERS[Math.floor(Math.random() * DEMO_USERS.length)];
    return e =>
      this.setState({
        login: {
          username: randomUser,
          password: "password"
        }
      });
  }

  loginExistingUser(e) {
    e.preventDefault();
    const user = this.state.login;
    this.props.login(user);
  }

  createNewUser(e) {
    e.preventDefault();
    const user = this.state.signup;
    console.log(user);
    this.props.signup(user);
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>{error}</li>
        ))}
      </ul>
    );
  }

  toggleMobileLoginMask(value) {
    this.setState({ showMobileMask: value });
  }

  render() {
    return (
      <div className="session-page-container">
        <div className="login-form-container">
          <h1 className="logo">
            <span className="ultra-thin">swag</span>
            <b>reads</b>
          </h1>
          <form onSubmit={this.loginExistingUser} className="login-form-box">
            <div className="error">{this.renderErrors()}</div>

            <input
              type="text"
              placeholder="Username"
              value={this.state.username}
              onChange={this.update("login", "username")}
              className="login-input"
            />

            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.update("login", "password")}
              className="login-input"
            />

            <button className="login-input">Sign in</button>
            <button className="login-input" onClick={this.demo()}>
              Demo!
            </button>
          </form>
          <button
            className="login-input mobile-login-btn"
            onClick={() => this.toggleMobileLoginMask(true)}
          >
            Sign in
          </button>
        </div>

        <div
          className={
            this.state.showMobileMask
              ? "mobile-login-mask show-mask"
              : "mobile-login-mask"
          }
        >
          <button
            className="close-mobile-mask"
            onClick={() => this.toggleMobileLoginMask(false)}
          >
            &times;
          </button>
          <form onSubmit={this.loginExistingUser} className="login-form-box">
            <h1 className="logo">
              <span className="ultra-thin">swag</span>
              <b>reads</b>
            </h1>
            <div className="error">{this.renderErrors()}</div>

            <input
              type="text"
              placeholder="Username"
              value={this.state.username}
              onChange={this.update("login", "username")}
              className="login-input"
            />

            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.update("login", "password")}
              className="login-input"
            />

            <button className="login-input">Sign in</button>
            <button className="login-input" onClick={this.demo()}>
              Demo!
            </button>
          </form>
        </div>

        <div className="signup-form-container">
          <form onSubmit={this.createNewUser} className="signup-form-box">
            <p className="new-here">New here? Create a free account!</p>
            <input
              type="text"
              placeholder="Username"
              value={this.state.username}
              onChange={this.update("signup", "username")}
              className="signup-input"
            />

            <input
              type="password"
              placeholder="Password"
              value={this.state.password}
              onChange={this.update("signup", "password")}
              className="signup-input"
            />
            <button>Sign up</button>
          </form>
        </div>
      </div>
    );
  }
}

export default SessionPage;

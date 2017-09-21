import React from 'react';

class SessionPage extends React.Component {

  constructor(props){
    super(props);
    this.state = { signup: {username:'', password:''}, login: {username:'', password: ''}};

    this.loginExistingUser = this.loginExistingUser.bind(this);
    this.createNewUser = this.createNewUser.bind(this);
  }

  update(key, field) {
      let otherField = (field === "username" ? "password" : "username");
      return e => this.setState({[key]: {
        [field]: e.currentTarget.value,
        [otherField]: this.state[key][otherField]
      }});
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

  render () {
    return (
      <div>
        <h2>This is the Session Page</h2>

        <div className='login-form-container'>
          <form onSubmit={this.loginExistingUser} className="login-form-box">
            Existing User:
            <br/>
            <label>Username:
              <input type="text"
                value={this.state.username}
                onChange={this.update("login", 'username')}
                className="login-input" />
            </label>
            <br/>
              <label>Password:
                <input type="password"
                  value={this.state.password}
                  onChange={this.update('login', 'password')}
                  className="login-input" />
              </label>
              <input type="submit" value="Submit" />
          </form>
        </div>

        <br/>

          <div className='signup-form-container'>
            <form onSubmit={this.createNewUser} className="signup-form-box">
              New User:
              <br/>
              <label>Username:
                <input type="text"
                  value={this.state.username}
                  onChange={this.update('signup', 'username')}
                  className="signup-input" />
              </label>
              <br/>
                <label>Password:
                  <input type="password"
                    value={this.state.password}
                    onChange={this.update('signup', 'password')}
                    className="signup-input" />
                </label>
                <input type="submit" value="Submit" />
            </form>
          </div>
      </div>
    );
  }

}

export default SessionPage;

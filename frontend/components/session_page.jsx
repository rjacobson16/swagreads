import React from 'react';
import ReactHint from 'react-hint';
// import 'react-hint/css/index.css';


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
      console.log(this.props.errors);
   }

   createNewUser(e) {
      e.preventDefault();
      const user = this.state.signup;
      console.log(user);
      this.props.signup(user);

    }
   renderErrors() {
     console.log('rendering errors');
     return(
       <ul>
         {this.props.errors.map((error, i) => (
           <li key={`error-${i}`}>
             {error}
           </li>
         ))}
       </ul>
     );
    }

  render () {
    return (
      <div className='session-page-container'>
        <div className='login-form-container'>
          <h1><i>Swag</i>reads</h1>
          <form onSubmit={this.loginExistingUser} className="login-form-box">
            <div>{this.renderErrors()}</div>

            <input type="text"
                placeholder='Username'
                value={this.state.username}
                onChange={this.update("login", 'username')}
                className="login-input" />

            <br/>

                <input type="password"
                  placeholder='Password'
                  value={this.state.password}
                  onChange={this.update('login', 'password')}
                  className="login-input" />

                <input type="submit" value="Sign In" />
          </form>

        </div>

        <br/>

          <div className='signup-form-container'>
            <form onSubmit={this.createNewUser} className="signup-form-box">
              <br/>

                <input type="text"
                  placeholder='Username'
                  value={this.state.username}
                  onChange={this.update('signup', 'username')}
                  className="signup-input" />

              <br/>

                  <input type="password"
                    placeholder='Password'
                    value={this.state.password}
                    onChange={this.update('signup', 'password')}
                    className="signup-input" />

                <br/>
                <input type="submit" value="Sign Up" />
            </form>
          </div>
      </div>
    );
  }

}

export default SessionPage;

import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import HomePageContainer from './home_page_container';
import SessionPageContainer from './session_page_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
    <header>
    </header>
      <Switch>
       <AuthRoute exact path="/" component={SessionPageContainer} />
       <ProtectedRoute path="/me" component={HomePageContainer} />
     </Switch>
  </div>
);

export default App;

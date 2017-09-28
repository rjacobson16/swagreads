import React from 'react';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import BookshelfIndexContainer from './bookshelf_index_container';
import BookshelfShowContainer from './bookshelf_show_container';
import HomePageContainer from './home_page_container';
import SessionPageContainer from './session_page_container';
import BookShowContainer from './books/book_show_container';
import NavBarContainer from './navbar_container';

import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
  <div>
      <NavBarContainer />
      <Switch>
       <AuthRoute exact path="/" component={SessionPageContainer} />
       <ProtectedRoute exact path="/books" component={HomePageContainer} />
       <ProtectedRoute exact path="/bookshelves/" component={BookshelfIndexContainer} />
       <ProtectedRoute exact path="/books/:bookId" component={BookShowContainer} />
       <ProtectedRoute exact path="/bookshelves/:bookshelfId" component={BookshelfShowContainer} />
     </Switch>
  </div>
);

export default App;

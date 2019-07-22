import React from "react";
import { Switch } from "react-router-dom";

import BookshelfIndexContainer from "./bookshelves/bookshelf_index_container";
import BookshelfShowContainer from "./bookshelves/bookshelf_show_container";
import BookIndexContainer from "./home_page/home_page_container";
import SessionPageContainer from "./session_page/session_page_container";
import BookShowContainer from "./books/book_show_container";
import NavBarContainer from "./navbar/navbar_container";

import { AuthRoute, ProtectedRoute } from "../util/route_util";

const App = () => (
  <div>
    <NavBarContainer />
    <Switch>
      <AuthRoute exact path="/" component={SessionPageContainer} />
      <ProtectedRoute exact path="/books" component={BookIndexContainer} />
      <ProtectedRoute
        exact
        path="/bookshelves/"
        component={BookshelfIndexContainer}
      />
      <ProtectedRoute
        exact
        path="/books/:bookId"
        component={BookShowContainer}
      />
      <ProtectedRoute
        exact
        path="/bookshelves/:bookshelfId"
        component={BookshelfShowContainer}
      />
    </Switch>
  </div>
);

export default App;

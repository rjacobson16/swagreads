import _ from 'lodash';

export function selectBookshelfBooks(state, bookshelfID) {
  return _.pickBy(state.entities.books, function(book, id){
    return state.entities.bookshelves[bookshelfID].book_ids.includes(parseInt(id));
  });
}

import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import Select from 'react-select';

class ShelveBook extends React.Component {

  constructor(props) {
    super(props);

    this.state = {shelfSelectValue: ''};
    this.updateValue = this.updateValue.bind(this);
    this.handleShelving = this.handleShelving.bind(this);
  }
  componentDidMount() {
    this.props.fetchAllBookshelves();
  }

  updateValue (newValue) {
		console.log('State changed to ' + this.state.shelfSelectValue);
		this.setState({
			shelfSelectValue: newValue,
		});
	}

  handleShelving(e) {
      e.preventDefault();
      this.props.addBookToBookshelf({book_id: this.props.book.id,
        bookshelf_id: this.state.shelfSelectValue.value}).then(
          this.props.history.push(`/bookshelves/`)
        );
   }

  render() {
    if (!this.props.bookshelves) return null;
    const options = this.props.bookshelves.map(
      (bookshelf) => ({value: bookshelf.id, label: bookshelf.name})

    );



    return (
      <div>
          <Select
              placeholder='Select Shelf'
              name="form-field-name"
              value={this.state.shelfSelectValue}
              options={options}
              onChange={this.updateValue}
          />
        <button onClick={this.handleShelving}>Add to Shelf</button>
      </div>
    );
  }

}

export default withRouter(ShelveBook);

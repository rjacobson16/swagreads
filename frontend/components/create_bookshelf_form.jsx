import React from 'react';

class CreateBookshelfForm extends React.Component{
  constructor(props) {
    super(props);

    this.state = { renderForm: false,
                   bookshelf: {name: '', user_id: this.props.currentUser.id}};

    this.toggleRenderForm = this.toggleRenderForm.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount(){

  }
  toggleRenderForm(){
    let value = this.state.renderForm ? false : true;
    this.setState({
      renderForm: value
    });
    console.log(this.state.renderForm);
  }


  update(key) {
      return e => this.setState({
        bookshelf: {
          [key]: e.currentTarget.value
        }});
    }

  handleSubmit(e){
    e.preventDefault;
    this.props.createBookshelf(this.state.bookshelf);
    this.toggleRenderForm();

  }


  render(){
    if (this.state.renderForm) {
      return (
        <div>
          <form className='add-bookshelf' onSubmit={this.handleSubmit}>
            <input type='text'
                   placeholder='Bookshelf name'
                   value={this.state.bookshelf.name}
                   onChange={this.update('name')}/>
                 <button>Submit</button>
          </form>
        </div>
      );
    }
    return(
      <div className='add-bookshelf' onClick={this.toggleRenderForm}>
        <i className="material-icons md-24">add</i>
        <p>Add shelf</p>
      </div>
    );
  }

}

export default CreateBookshelfForm;

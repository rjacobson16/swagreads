class Api::BooksController < ApplicationController
  def index
    @books = Book.all.includes(:reviews)
  end

  def show
    @book = Book.find(params[:id])
  end

  def shelve
    s = Shelving.new(shelving_params)
    if s.save
      @bookshelf = Bookshelf.find_by_id(shelving_params[:bookshelf_id])
      render 'api/bookshelves/show.json.jbuilder'
    else
      render json: s.errors.full_messages, status: 422
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :img_url, :description)
  end

  def shelving_params
    params.require(:shelving).permit(:book_id, :bookshelf_id)
  end

end

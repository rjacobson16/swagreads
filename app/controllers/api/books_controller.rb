class Api::BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :img_url, :description)
  end
end

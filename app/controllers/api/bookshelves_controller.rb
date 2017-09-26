class Api::BookshelvesController < ApplicationController
  def index
    @bookshelves = current_user.bookshelves
  end

  def show
    @bookshelf = Bookshelf.find(params[:id])

    if @bookshelf
      render :show
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end
  end

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)
    @bookshelf.user_id = current_user.id

    if @bookshelf.save
      render :show
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end
  end

  def destroy
    bookshelf = Bookshelf.find(params[:id])
    bookshelf.destroy
    redirect_to :action => :index, status: 303
  end

private

def bookshelf_params
  params.require(:bookshelf).permit(:name)
end

end

# {id: 2, name: "faves", books: Array(0)}

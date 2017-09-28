class Api::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      @book = Book.find_by_id(review_params[:book_id])
      render 'api/books/show.json.jbuilder'
    else
      render json: @review.errors.full_messages, status: 422
    end


  end

  def index
    @reviews = current_user.reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      @book = Book.find_by_id(review_params[:book_id])
      render 'api/books/show.json.jbuilder'
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    @review = Review.find(params[:id])

    if @review.destroy
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  private

  def review_params
    params.require(:review).permit(:book_id, :title, :body, :rating)
  end
end

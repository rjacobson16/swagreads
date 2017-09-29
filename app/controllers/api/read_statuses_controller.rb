class Api::ReadStatusesController < ApplicationController
  def index
    @read_statuses = current_user.read_statuses
  end

  def show
    @read_status = ReadStatus.find(params[:id])
  end

  def create
    @read_status = ReadStatus.new(read_status_params)
    @read_status.user_id = current_user.id

    if @read_status.save
      render :show
    else
      render json: @read_status.errors.full_messages, status: 422
    end
  end

  def update
    @read_status = ReadStatus.find(params[:id])
    if @read_status.update(read_status_params)
      render :show
    else
      render json: @read_status.errors.full_messages, status: 422
    end
  end

  private
  def read_status_params
    params.require(:read_status).permit(:book_id, :status)
  end
end

class ReviewsController < ApplicationController

  def index
    if params[:movie_id]
      render json: Review.where(movie_id: params[:movie_id])
    elsif params[:user_id]
      render json: Review.where(user_id: params[:user_id])
    else
      render json: Review.all
    end
  end

  def show
    render json: Review.find(params[:id])
  end

  def find_by_username
    reviews = Review.where(username: params[:username])
  end

  def create
    review = Review.create(review_params)
    if review.save
      render json: review
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def update
    review = Review.find(params[:id])
    if review.update(review_params)
      review.save
      render json: review_params
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    head :ok
  end

  private
  def review_params
    params.require(:review).permit(:score, :content, :movie_id, :user_id)
  end

end

class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.create!(user_params)
    if user.save
      head :created, location: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      user.save
      render json: user
    else
      render json: movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy!
    head :ok
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :token, :password_digest)
  end

end

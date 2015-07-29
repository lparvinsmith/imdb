class MoviesController < ApplicationController

  def index
    render json: Movie.all
  end

  def show
    render json: Movie.find(params[:id])
  end

  def create
    # puts movie_params - test what we were getting in params
    movie = Movie.create!(movie_params)
    if movie.save
      render json: movie
    else
      render json: movie.errors, status: :unprocessable_entity
    end
  end

  def update
    movie = Movie.find(params[:id])
    if movie.update(movie_params)
      movie.save
      render json: movie
    else
      render json: movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy!
    head :ok
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :description, :release_year, :mpaa_rating, :length)
  end
end

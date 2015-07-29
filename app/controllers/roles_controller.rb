class RolesController < ApplicationController

  def index
    # render json: Role.all
    if params[:movie_id]
      render json: Role.where(movie_id: params[:movie_id])
    elsif params[:person_id]
      render json: Role.where(person_id: params[:person_id])
    else
      render json: Role.all
    end
  end

  def show
    render json: Role.find(params[:id])
  end

  def find_by_name
    roles = Role.where(name: params[:name])
    render json: roles
  end

  def create
    role = Role.create(role_params)
    if role.save
      render json: role
    else
      render json: role.errors, status: :unprocessable_entity
    end
  end

  def update
    role = Role.find(params[:id])
    if role.update(role_params)
      role.save
      render json: role
    else
      render json: role.errors, status: :unprocessable_entity
    end
  end

  def destroy
    role = Role.find(params[:id])
    role.destroy
    head :ok
  end

  private
  def role_params
    params.require(:role).permit(:name, :movie_id, :person_id)
  end
end

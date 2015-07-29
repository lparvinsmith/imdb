class PeopleController < ApplicationController
  def index
    render json: Person.all
  end

  def show
    render json: Person.find(params[:id])
  end

  def create
    # puts person_params - test what we were getting in params
    person = Person.create!(person_params)
    if person.save
      render json: person
    else
      render json: person.errors, status: :unprocessable_entity
    end
  end

  def update
    person = Person.find(params[:id])
    if person.update(person_params)
      person.save
      render json: person
    else
      render json: person.errors, status: :unprocessable_entity
    end
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy!
    head :ok
  end

  private
  def person_params
    params.require(:person).permit(:name, :born, :died)
  end
end

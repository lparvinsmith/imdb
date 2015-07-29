class RoleSerializer < ActiveModel::Serializer
  attributes :id, :name, :person_name, :movie_title, :movie_year

  def person_name
    if object.person
      object.person.name
    end
  end

  def movie_title
    object.movie.title if object.movie
  end

  def movie_year
    object.movie.release_year if object.movie
  end

end

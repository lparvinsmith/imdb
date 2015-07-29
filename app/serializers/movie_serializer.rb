class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :release_year, :mpaa_rating, :length
end

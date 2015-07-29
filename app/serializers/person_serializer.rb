class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :born, :died
end

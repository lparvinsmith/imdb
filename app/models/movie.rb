class Movie < ActiveRecord::Base
  has_many :roles
  has_many :people, through: :roles
  has_many :reviews
  has_many :users, through: :reviews
end

class AddMovieIdColumnToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :movie_id, :integer
  end
end

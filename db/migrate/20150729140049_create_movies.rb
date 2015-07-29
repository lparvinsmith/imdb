class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :release_year
      t.string :mpaa_rating
      t.integer :length

      t.timestamps null: false
    end
  end
end

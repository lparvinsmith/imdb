class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :born
      t.string :died

      t.timestamps null: false
    end
  end
end

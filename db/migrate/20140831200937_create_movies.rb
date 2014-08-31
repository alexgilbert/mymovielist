class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb_id
      t.string :title
      t.date :release_date
      t.integer :runtime
      t.boolean :adult
      t.text :overview

      t.timestamps
    end
  
    add_index :movies, :imdb_id, unique: true
    add_index :movies, [:title, :release_date], unique: true
  end
end

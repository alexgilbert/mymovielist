class CreateUsersMoviesTable < ActiveRecord::Migration
  def change
    create_table :users_movies, id: false do |t|
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end

    add_index :users_movies, [:user_id, :movie_id], unique: true
  end
end

class AddUserIdMovieIdToOwn < ActiveRecord::Migration
  def change
    add_column :owns, :user_id, :integer
    add_column :owns, :movie_id, :integer
    add_index :owns, [:user_id, :movie_id], unique: true
  end
end

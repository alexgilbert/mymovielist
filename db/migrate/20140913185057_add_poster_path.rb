class AddPosterPath < ActiveRecord::Migration
  def change
    add_column :movies, :poster_path, :text
  end
end

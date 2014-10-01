class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.integer :movie_id
      t.integer :genre_id

      t.timestamps
    end
    
    add_index :classifications, :movie_id
    add_index :classifications, :genre_id
    add_index :classifications, [:movie_id, :genre_id]
  end
end

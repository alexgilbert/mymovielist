class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :movie_id
      t.integer :list_id

      t.timestamps
    end

    add_index :items, :movie_id
    add_index :items, :list_id
    add_index :items, [:movie_id, :list_id]
  end
end

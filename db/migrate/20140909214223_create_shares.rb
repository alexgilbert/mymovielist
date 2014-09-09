class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :user_id
      t.integer :list_id
      t.boolean :writable

      t.timestamps
    end

    add_index :shares, :user_id
    add_index :shares, :list_id
    add_index :shares, [:user_id, :list_id], unique: true
  end
end

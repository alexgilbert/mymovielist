class RemoveUserIdKey < ActiveRecord::Migration
  def change
    remove_index :lists, [:user_id, :name]
  end
end

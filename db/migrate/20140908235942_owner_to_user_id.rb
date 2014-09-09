class OwnerToUserId < ActiveRecord::Migration
  def change
  	rename_column :lists, :owner, :user_id
  end
end

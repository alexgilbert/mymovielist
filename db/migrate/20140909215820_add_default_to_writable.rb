class AddDefaultToWritable < ActiveRecord::Migration
  def change
    change_column :shares, :writable, :boolean, default: true
  end
end

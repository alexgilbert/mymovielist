class Lists < ActiveRecord::Migration
  def change
  	create_table :lists do |t|
  		t.string :name
  		t.integer :owner

  		t.timestamps
  	end
  	
  	add_index :lists, :owner
  	add_index :lists, [:owner, :name], unique: true
  end
end

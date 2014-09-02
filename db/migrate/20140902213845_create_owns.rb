class CreateOwns < ActiveRecord::Migration
  def change
    create_table :owns do |t|
      t.timestamps
    end
  
  end
end

class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :tmdbid
      t.string :title
      t.date :year_made
      t.time :length
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end

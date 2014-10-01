class Classification < ActiveRecord::Base
  belongs_to :genre
  belongs_to :movie

  validates :genre_id, presence: true
  validates :movie_id, presence: true
end

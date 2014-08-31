class Movie < ActiveRecord::Base
  has_many :user_movies
  has_many :users, through: :user_movies

  validates :imdb_id, presence: true
  validates :title, presence: true
  validates :release_date, presence: true
end

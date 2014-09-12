require_dependency 'mytmdb/mytmdb_movie'

class Movie < ActiveRecord::Base
  has_many :owns, dependent: :destroy
  has_many :users, through: :owns
  has_many :items, dependent: :destroy
  has_many :lists, through: :items

  validates :imdb_id, presence: true
  validates :title, presence: true
  validates :release_date, presence: true, date: { before: Proc.new { Time.now } }
  validates :runtime, numericality: { only_integer: true }

  def tmdb_movie
    @tmdb_movie ||= Mytmdb::MytmdbMovie.new(self.imdb_id)
  end
end

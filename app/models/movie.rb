require_dependency 'mytmdb/movie'

class Movie < ActiveRecord::Base
  has_many :owns, dependent: :destroy
  has_many :users, through: :owns
  has_many :items, dependent: :destroy
  has_many :lists, through: :items
  has_many :classifications, dependent: :destroy
  has_many :genres, through: :classifications

  validates :imdb_id, presence: true
  validates :title, presence: true
  validates :runtime, numericality: { only_integer: true }

  def mytmdb_movie
    @mytmdb_movie ||= Mytmdb::Movie.new(self.imdb_id)
  end

  def create_classifications
    ClassificationBuilder.new.set_movie_id(self.id).create
  end
end

class Movie < ActiveRecord::Base
  has_many :owns, dependent: :destroy
  has_many :users, through: :owns

  validates :imdb_id, presence: true
  validates :title, presence: true
  validates :release_date, presence: true, date: { before: Proc.new { Time.now } }
  validates :runtime, numericality: { only_integer: true }
end

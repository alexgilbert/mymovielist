class Genre < ActiveRecord::Base
  has_many :classifications, dependent: :destroy
  has_many :movies, through: :classifications

  validates :name, presence: true
end

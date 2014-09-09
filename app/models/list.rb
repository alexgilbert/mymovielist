class List < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  has_many :items, dependent: :destroy
  has_many :movies, through: :items

  validates :name, presence: true
  validates :user_id, presence: true
end


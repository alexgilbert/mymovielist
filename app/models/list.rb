class List < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  has_many :items, dependent: :destroy
  has_many :movies, through: :items
  has_many :shares, dependent: :destroy
  has_many :users, through: :shares

  validates :name, presence: true
  validates :user_id, presence: true

  def share_attributes=(share_attributes)
    share_attributes.each do |attributes|
      share.build(attributes)
    end
  end
end

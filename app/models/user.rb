class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
  has_many :owns, dependent: :destroy
  has_many :movies, through: :owns
  has_many :lists, dependent: :destroy
  has_many :shares, dependent: :destroy

  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
		uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 6 }
	
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    Micropost.from_user_followed_by(self)
  end

  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

  def owns?(imdb_id)
    MovieOwner.new(self.id).owns?(imdb_id)
  end

  def own(imdb_id)
    MovieOwner.new(self.id).own(imdb_id)
  end

  def unown(imdb_id)
    MovieOwner.new(self.id).unown(imdb_id)
  end

  def tmdb_movies
    @tmdb_movies ||= self.movies.map{ |m| m.mytmdb_movie } 
  end

  def writable_lists
    @writable_lists ||= self.shares.where(writable: true).map{ |s| s.list }
  end

  def sharable_users(list_id)
    self.followers.reject { |u| Share.find_by(user_id: u.id, list_id: list_id)} 
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end 
end

require_dependency 'mytmdb/mytmdb_movie'

class MovieOwner
 
  def initialize user_id
    @user_id = user_id
  end

  def user_id
    @user_id
  end

  def own imdb_id
    Own.create(user_id: @user_id, movie_id: get_movie_id(imdb_id))
  end

  def owns? imdb_id
    Own.find_by(user_id: @user_id, movie_id: get_movie_id(imdb_id))
  end

  def unown imdb_id
    Own.find_by(user_id: @user_id, movie_id: get_movie_id(imdb_id)).destroy
  end

  private 
    def get_movie_id imdb_id
      MovieBuilder.new(imdb_id.to_s).create.id
    end
end
